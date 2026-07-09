# Eval results — token 1.17.x

Skill under test: `drupal-module-docs` · runs per cell: 3 · model: CLI default

`Correct` = live-state verify (execution cases) or text assertions (recipe cases). `n/a` = provider CLI not installed.

## token-browser-in-form  (`recipe`)

> In a Drupal 11 module I have a settings form. Add a widget that lets the user browse the available tokens for the `node` and `user` token types. Show the exact form render-array element(s) to add, plus one line of explanation.

| Provider | Arm | Correct | In tok | Out tok | Time (s) | Cost $ |
|---|---|---|--:|--:|--:|--:|
| claude | vanilla | 3/3 | 2952 | 550 | 14.1 | 0.0386 |
| claude | skill | 3/3 | 2960 | 1000 | 28.4 | 0.1471 |

## token-refresh-cache  (`recipe`)

> I added a new custom token via hook_token_info() on this Drupal site but it does not appear in the token browser yet. Give the single drush command to refresh it.

| Provider | Arm | Correct | In tok | Out tok | Time (s) | Cost $ |
|---|---|---|--:|--:|--:|--:|
| claude | vanilla | 3/3 | 2952 | 228 | 7.7 | 0.0304 |
| claude | skill | 3/3 | 2954 | 357 | 12.8 | 0.0639 |

## token-replace-in-code  (`recipe`)

> In PHP on a Drupal 11 site, replace the tokens in the string `[node:title]` for a given `$node` object and return the resulting text. Show the code.

| Provider | Arm | Correct | In tok | Out tok | Time (s) | Cost $ |
|---|---|---|--:|--:|--:|--:|
| claude | vanilla | 3/3 | 2952 | 572 | 12.1 | 0.039 |
| claude | skill | 3/3 | 2954 | 1006 | 22.0 | 0.0827 |

## token-provide-custom  (`recipe`)

> I want to define a brand-new custom token for my module (its metadata and its value). Which two Drupal hooks do I implement? Name them.

| Provider | Arm | Correct | In tok | Out tok | Time (s) | Cost $ |
|---|---|---|--:|--:|--:|--:|
| claude | vanilla | 3/3 | 2952 | 178 | 6.5 | 0.0291 |
| claude | skill | 3/3 | 2952 | 151 | 8.2 | 0.0351 |

## token-entity-mapping  (`recipe`)

> In code on this Drupal site, how do I get the token *type* name for the `taxonomy_term` entity type (it should resolve to `term`)? Name the service or method to use.

| Provider | Arm | Correct | In tok | Out tok | Time (s) | Cost $ |
|---|---|---|--:|--:|--:|--:|
| claude | vanilla | 3/3 | 2957 | 1961 | 34.1 | 0.1528 |
| claude | skill | 3/3 | 2958 | 771 | 20.4 | 0.1286 |
