# Eval results — pathauto 1.15.x

Skill under test: `drupal-module-docs` · runs per cell: 1 · model: CLI default

`Correct` = live-state verify (execution cases) or text assertions (recipe cases). `n/a` = provider CLI not installed.

## pathauto-blog-pattern  (`execution`)

> On this Drupal site (DDEV, drush is available), configure Pathauto so that Article nodes automatically get URL aliases of the form `blog/[node:title]`. Apply the change to the running site itself using drush/config — do not just describe the steps. When finished, state in one line what you changed.

| Provider | Arm | Correct | In tok | Out tok | Time (s) | Cost $ |
|---|---|---|--:|--:|--:|--:|
| claude | vanilla | 1/1 | 3232 | 5013 | 100.7 | 0.4018 |
| claude | skill | 1/1 | 3093 | 2044 | 51.6 | 0.236 |
