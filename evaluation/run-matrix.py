#!/usr/bin/env python3
"""Evaluate the `drupal-module-docs` skill: vanilla vs +skill, across providers.

Reuses drupal/ai_best_practices' eval harness for the model-call + metrics layer
(evals/providers.py: token/cost/elapsed capture, codex/gemini runners) and its
evals.json shape. Adds two things that harness does not have:

  1. A claude runner that executes tools unattended (--dangerously-skip-permissions,
     cwd = project root) so the agent can actually run drush and mutate the site.
  2. Live-state verification: for `mode: execution` cases we run the case's `reset`
     script, let the agent do the work, then run its `verify` script against the
     real site (exit 0 = correct). `mode: recipe` cases are graded on response text
     (must_contain_any / must_not_contain), exactly like ai_best_practices.

The A/B design mirrors evals/compare.py: identical flags per arm, the only variable
is whether the skill text is prepended to the prompt.

Usage:
  python3 agent-module-documentation/evaluation/run-matrix.py \
      --module pathauto --version 1.15.x \
      --providers claude --arms vanilla skill --runs 1
  # add --providers claude codex  once the codex CLI is installed
  # --dry-run prints the plan and prompts without calling any model
"""
from __future__ import annotations
import argparse, json, subprocess, sys, time
from pathlib import Path

PROJECT_ROOT = Path(__file__).resolve().parents[2]          # /var/www/html
DOCS_ROOT = PROJECT_ROOT / "agent-module-documentation"
SKILL_FILE = PROJECT_ROOT / ".agents/skills/drupal-module-docs/SKILL.md"
VENDOR_EVALS = PROJECT_ROOT / "vendor/drupal/ai_best_practices/evals"

# Reuse the vendor harness for codex/gemini + cost estimation + env cleaning.
sys.path.insert(0, str(VENDOR_EVALS))
try:
    from providers import run_codex, run_gemini, estimate_cost, clean_env  # type: ignore
except Exception:                                                          # pragma: no cover
    run_codex = run_gemini = None
    def clean_env():
        import os; e = {**os.environ}; e.pop("CLAUDECODE", None); e.pop("CLAUDE_CODE_ENTRYPOINT", None); return e
    def estimate_cost(*_a, **_k): return 0.0


def run_claude_exec(prompt: str, model: str | None, cwd: str) -> dict:
    """claude -p that may use tools unattended (bypasses permission prompts)."""
    start = time.monotonic()
    r = {"response": "", "elapsed": 0.0, "exit_code": -1,
         "input_tokens": 0, "output_tokens": 0, "cache_read_tokens": 0, "cost_usd": 0.0}
    cmd = ["claude", "-p", "-"]
    if model:
        cmd += ["--model", model]
    cmd += ["--output-format", "json", "--dangerously-skip-permissions",
            "--setting-sources", "", "--strict-mcp-config"]
    try:
        proc = subprocess.run(cmd, input=prompt, capture_output=True, text=True,
                              timeout=420, env=clean_env(), cwd=cwd)
        r["elapsed"] = round(time.monotonic() - start, 1)
        r["exit_code"] = proc.returncode
        data = json.loads(proc.stdout.strip())
        obj = data if isinstance(data, dict) else next((x for x in data if x.get("type") == "result"), {})
        r["response"] = obj.get("result", "")
        r["cost_usd"] = obj.get("total_cost_usd", 0.0) or 0.0
        u = obj.get("usage", {}) or {}
        r["input_tokens"] = u.get("input_tokens", 0) or 0
        r["output_tokens"] = u.get("output_tokens", 0) or 0
        r["cache_read_tokens"] = u.get("cache_read_input_tokens", 0) or 0
    except FileNotFoundError:
        pass
    except subprocess.TimeoutExpired:
        r["elapsed"] = round(time.monotonic() - start, 1)
    except json.JSONDecodeError:
        r["elapsed"] = round(time.monotonic() - start, 1)
    return r


def build_prompt(case: dict, arm: str) -> str:
    task = case["prompt"]
    if arm == "vanilla":
        return task
    # skill arm: prepend the skill text (+ any references), like compare.py does.
    skill = SKILL_FILE.read_text()
    refs = SKILL_FILE.parent / "references"
    if refs.is_dir():
        for r in sorted(refs.glob("*.md")):
            skill += f"\n\n---\n\n# Reference: {r.name}\n\n{r.read_text()}"
    return f"{skill}\n\n---\n\n{task}"


def run_model(provider: str, prompt: str, model: str | None, execution: bool) -> dict:
    if provider == "claude":
        return run_claude_exec(prompt, model, cwd=str(PROJECT_ROOT))
    if provider == "codex" and run_codex:
        return run_codex(prompt, model or "gpt-5.4", cwd=str(PROJECT_ROOT))
    if provider == "gemini" and run_gemini:
        return run_gemini(prompt, model or "gemini-2.5-pro", cwd=str(PROJECT_ROOT))
    return {"response": "", "elapsed": 0.0, "exit_code": -1, "input_tokens": 0,
            "output_tokens": 0, "cost_usd": 0.0}


def grade_recipe(resp: str, case: dict) -> bool:
    low = resp.lower()
    ok = True
    if case.get("must_contain_any"):
        ok &= any(s.lower() in low for s in case["must_contain_any"])
    if case.get("must_not_contain"):
        ok &= all(s not in resp for s in case["must_not_contain"])
    return ok


def sh(path_rel: str) -> int:
    return subprocess.run(["bash", str(PROJECT_ROOT / path_rel)],
                          cwd=str(PROJECT_ROOT)).returncode


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--module", required=True)
    ap.add_argument("--version", required=True)
    ap.add_argument("--providers", nargs="+", default=["claude"])
    ap.add_argument("--arms", nargs="+", default=["vanilla", "skill"])
    ap.add_argument("--model", default=None, help="model override (default: CLI default per provider)")
    ap.add_argument("--runs", type=int, default=1)
    ap.add_argument("--only", nargs="+", default=None, help="run only these case ids")
    ap.add_argument("--dry-run", action="store_true")
    a = ap.parse_args()

    eval_dir = DOCS_ROOT / "modules" / a.module / a.version / "eval"
    spec = json.loads((eval_dir / "evals.json").read_text())
    cases = [c for c in spec["evals"] if not a.only or c["id"] in a.only]
    rows = []  # (case_id, provider, arm, correct, in_tok, out_tok, secs, cost)

    for case in cases:
        execution = case.get("mode") == "execution"
        for provider in a.providers:
            for arm in a.arms:
                prompt = build_prompt(case, arm)
                if a.dry_run:
                    print(f"\n### {case['id']} | {provider} | {arm} | mode={case.get('mode')}")
                    print(prompt[:600] + ("..." if len(prompt) > 600 else ""))
                    continue
                cors, itoks, otoks, secs, costs = [], [], [], [], []
                for _ in range(a.runs):
                    if execution and case.get("reset"):
                        sh(case["reset"])
                    res = run_model(provider, prompt, a.model, execution)
                    if res["exit_code"] == -1:
                        cors.append(None); break            # provider CLI not available
                    if execution and case.get("verify"):
                        correct = sh(case["verify"]) == 0
                    else:
                        correct = grade_recipe(res["response"], case)
                    cors.append(correct)
                    itoks.append(res["input_tokens"]); otoks.append(res["output_tokens"])
                    secs.append(res["elapsed"]); costs.append(res["cost_usd"])
                if cors and cors[0] is None:
                    rows.append((case["id"], provider, arm, "n/a", 0, 0, 0.0, 0.0))
                else:
                    n = len(cors)
                    rows.append((case["id"], provider, arm,
                                 f"{sum(1 for c in cors if c)}/{n}",
                                 sum(itoks)//n, sum(otoks)//n,
                                 round(sum(secs)/n, 1), round(sum(costs)/n, 4)))
                print(f"  done: {case['id']} | {provider} | {arm} -> {rows[-1][3]}")

    if a.dry_run:
        return 0
    write_results(eval_dir, spec, a, rows)
    return 0


def write_results(eval_dir: Path, spec: dict, a, rows) -> None:
    lines = [f"# Eval results — {spec['module']} {spec['version']}", "",
             f"Skill under test: `{spec['skill_name']}` · runs per cell: {a.runs} · "
             f"model: {a.model or 'CLI default'}", "",
             "`Correct` = live-state verify (execution cases) or text assertions (recipe cases). "
             "`n/a` = provider CLI not installed.", ""]
    by_case: dict[str, list] = {}
    for r in rows:
        by_case.setdefault(r[0], []).append(r)
    for cid, rs in by_case.items():
        case = next(c for c in spec["evals"] if c["id"] == cid)
        lines += [f"## {cid}  (`{case.get('mode')}`)", "",
                  f"> {case['prompt']}", "",
                  "| Provider | Arm | Correct | In tok | Out tok | Time (s) | Cost $ |",
                  "|---|---|---|--:|--:|--:|--:|"]
        for _, prov, arm, cor, it, ot, sec, cost in rs:
            lines.append(f"| {prov} | {arm} | {cor} | {it} | {ot} | {sec} | {cost} |")
        lines.append("")
    (eval_dir / "results.md").write_text("\n".join(lines))
    print(f"\nwrote {eval_dir / 'results.md'}")


if __name__ == "__main__":
    raise SystemExit(main())
