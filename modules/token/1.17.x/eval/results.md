# Eval results — token 1.17.x

_Not yet run._ Populate with:

```bash
python3 agent-module-documentation/evaluation/run-matrix.py \
    --module token --version 1.17.x --providers claude --runs 3
```

The runner overwrites this file with a `{vanilla, skill} × provider` table per case
(`token-browser-in-form`, `token-refresh-cache`) reporting Correct / In tok / Out tok /
Time / Cost. See `../../../../evaluation/README.md`.
