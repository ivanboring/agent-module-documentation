# Eval results — pathauto 1.15.x

Skill under test: `drupal-module-docs` · runs per cell: 3 · model: CLI default

`Correct` = live-state verify (execution cases) or text assertions (recipe cases). `n/a` = provider CLI not installed.

## pathauto-blog-pattern  (`execution`)

> On this Drupal site (DDEV, drush is available), configure Pathauto so that Article nodes automatically get URL aliases of the form `blog/[node:title]`. Apply the change to the running site itself using drush/config — do not just describe the steps. When finished, state in one line what you changed.

| Provider | Arm | Correct | In tok | Out tok | Time (s) | Cost $ |
|---|---|---|--:|--:|--:|--:|
| claude | vanilla | 3/3 | 2960 | 1615 | 44.7 | 0.161 |
| claude | skill | 3/3 | 3237 | 1818 | 50.3 | 0.2037 |

## pathauto-separator-underscore  (`recipe`)

> On this Drupal site, what is the exact drush command to change the Pathauto word separator from a hyphen to an underscore? Answer with the command only.

| Provider | Arm | Correct | In tok | Out tok | Time (s) | Cost $ |
|---|---|---|--:|--:|--:|--:|
| claude | vanilla | 3/3 | 2952 | 279 | 9.5 | 0.0317 |
| claude | skill | 3/3 | 2958 | 438 | 23.6 | 0.1188 |
