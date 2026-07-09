# Eval results — token 1.17.x

Skill under test: `drupal-module-docs` · runs per cell: 3 · model: CLI default

`Correct` = live-state verify (execution cases) or text assertions (recipe cases). `n/a` = provider CLI not installed.

## token-browser-in-form  (`recipe`)

> In a Drupal 11 module I have a settings form. Add a widget that lets the user browse the available tokens for the `node` and `user` token types. Show the exact form render-array element(s) to add, plus one line of explanation.

| Provider | Arm | Correct | In tok | Out tok | Time (s) | Cost $ |
|---|---|---|--:|--:|--:|--:|
| claude | vanilla | 3/3 | 2952 | 568 | 15.8 | 0.039 |
| claude | skill | 3/3 | 2958 | 847 | 20.6 | 0.1288 |

## token-refresh-cache  (`recipe`)

> I added a new custom token via hook_token_info() on this Drupal site but it does not appear in the token browser yet. Give the single drush command to refresh it.

| Provider | Arm | Correct | In tok | Out tok | Time (s) | Cost $ |
|---|---|---|--:|--:|--:|--:|
| claude | vanilla | 3/3 | 2952 | 320 | 8.6 | 0.0327 |
| claude | skill | 3/3 | 2954 | 382 | 11.8 | 0.0682 |
