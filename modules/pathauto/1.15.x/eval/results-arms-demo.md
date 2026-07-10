# Eval results — pathauto 1.15.x

Skill under test: `drupal-module-docs` · runs per cell: 1 · model: claude-opus-4-8 · effort: medium

`Correct` = live-state verify (execution cases) or text assertions (recipe cases). `n/a` = provider CLI not installed.

## pathauto-blog-pattern-expert  (`execution` · persona: drupal-expert)

> On this Drupal site (DDEV, drush available), add a Pathauto pattern for the Article content type with the token pattern `blog/[node:title]`, and apply it via drush/config so new article nodes get that URL alias. Give a one-line summary of what you changed.

| Provider | Arm | Correct | In tok | Out tok | Time (s) | Cost $ |
|---|---|---|--:|--:|--:|--:|
| claude | vanilla | 1/1 | 3234 | 8344 | 154.2 | 0.5089 |
| claude | skill | 1/1 | 3097 | 2092 | 62.8 | 0.2371 |
| claude | memory | 1/1 | 3099 | 3355 | 79.3 | 0.3911 |

## pathauto-max-length  (`recipe`)

> On this Drupal site, give the exact drush command to set Pathauto's maximum generated alias length to 100. Answer with the command only.

| Provider | Arm | Correct | In tok | Out tok | Time (s) | Cost $ |
|---|---|---|--:|--:|--:|--:|
| claude | vanilla | 1/1 | 2952 | 165 | 9.2 | 0.028 |
| claude | skill | 1/1 | 2958 | 387 | 13.0 | 0.115 |
| claude | memory | 1/1 | 2952 | 26 | 3.9 | 0.0936 |
