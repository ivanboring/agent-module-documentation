# Evaluation — does the `drupal-module-docs` skill help?

We measure, per module task: **is it solved correctly**, **how many tokens**, **how long**,
and **how much $** — for the matrix **{vanilla, +skill} × {claude, codex, gemini}**.

## Can we reuse the ai_best_practices eval system? — Yes, mostly.

`drupal/ai_best_practices` (installed at `vendor/drupal/ai_best_practices/evals/`) already
ships a solid harness, and we reuse it rather than reinventing:

- **`evals/providers.py`** — provider-agnostic CLI runners (`claude`, `codex`, `gemini`)
  that return `{response, elapsed, input_tokens, output_tokens, cost_usd, ...}`. This is
  the hard part (token/cost/time capture) and we import it directly.
- **`evals.json` format** — each case has `prompt`, `expected_output`, and text assertions
  (`must_contain_any`, `must_not_contain`, `check_php_lint`). Our per-module `eval/evals.json`
  files use this shape.
- **`evals/compare.py` A/B method** — baseline vs skill by prepending the skill text to the
  prompt, identical flags per arm. We follow the same design.

**The one gap:** that harness grades the model's **response text**. It never runs the task
against a live site, so it cannot answer *"did the pathauto pattern actually get created and
does a new node get the right URL?"* — which is exactly what you asked for.

**What we added** (thin layer, in `run-matrix.py`):
1. A claude runner that executes tools unattended (`--dangerously-skip-permissions`,
   `cwd` = project root) so the agent can actually run `drush` and mutate the site.
2. **Live-state verification** for `mode: execution` cases: run the case's `reset` script,
   let the agent work, then run its `verify` script against the real site (exit 0 = correct).

So each `evals.json` case is one of two modes:
- **`recipe`** — graded on response text (reuses ai_best_practices grading). Cheap, CI-safe,
  no site mutation. Good for "what's the command?" questions.
- **`execution`** — the agent must actually perform the change; correctness = live-site
  verification. This is the pathauto "set it up, then check it was set up" case.

## Layout

```
evaluation/
├── README.md            # this file
├── run-matrix.py        # the runner (reuses vendor providers.py; adds exec + verify)
└── verify/              # live-state check + reset scripts referenced by execution cases
    ├── pathauto-blog-pattern.sh
    └── pathauto-reset.sh
modules/<name>/<version>/eval/
├── evals.json           # suggested tasks for this module (recipe + execution)
└── results.md           # the {vanilla,skill}×{provider} table (written by run-matrix.py)
```

## Running

```bash
# one case, both arms, claude only (the pathauto setup example):
python3 agent-module-documentation/evaluation/run-matrix.py \
    --module pathauto --version 1.15.x --only pathauto-blog-pattern --arms vanilla skill

# whole module, add providers as their CLIs become available:
python3 agent-module-documentation/evaluation/run-matrix.py \
    --module token --version 1.17.x --providers claude codex gemini --runs 3

# see the exact prompts without spending anything:
python3 .../run-matrix.py --module pathauto --version 1.15.x --dry-run
```

Results are written to `modules/<name>/<version>/eval/results.md`.

## Reading the table

| Column | Meaning |
|---|---|
| Arm | `vanilla` = bare prompt; `skill` = prompt with `drupal-module-docs` SKILL.md prepended |
| Correct | execution: live-state verify pass/total; recipe: text-assertion pass/total |
| In/Out tok | model input/output tokens (averaged over `--runs`) |
| Time (s) | wall-clock per case |
| Cost $ | provider-reported (claude) or estimated (codex/gemini) |

**The hypothesis the skill should prove:** same-or-better *Correct* at **fewer tokens and
less time** than vanilla — because reading `agent/start.md` + one solution doc is cheaper
than the agent grepping `web/modules/contrib/<name>/src`.

## Caveats / honesty

- **Isolation:** both arms run with `--setting-sources ''` so the project's skills do **not**
  auto-load; the skill reaches the model only via prompt injection in the `skill` arm. This
  keeps the A/B clean (the sole variable is the skill text).
- **Non-determinism:** agents vary run-to-run. Use `--runs 3+` for stable cells.
- **codex/gemini:** rows show `n/a` until those CLIs are installed; the harness already
  supports them (via the reused `providers.py`).
- **Execution cases mutate the site** (patterns, a throwaway node). `reset` runs before each
  attempt; if the site ever breaks, `drush site:install -y` restores it.
