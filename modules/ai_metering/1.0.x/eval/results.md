# Eval results — ai_metering 1.0.x

Skill under test: `drupal-module-docs` · runs per cell: 3 · model: CLI default

`Correct` = live-state verify (execution cases) or text assertions (recipe cases). `n/a` = provider CLI not installed.

## aim-set-budget  (`recipe`)

> On this Drupal site using the ai_metering module, what is the exact Drush command (or its alias) to set a specific user's monthly AI token budget? Answer with the command.

| Provider | Arm | Correct | In tok | Cache-rd | Out tok | Time (s) | Cost $ |
|---|---|---|--:|--:|--:|--:|--:|
| claude | vanilla | 3/3 | 2958 | 78245 | 984 | 21.2 | 0.1677 |
| claude | skill | 3/3 | 2958 | 77197 | 531 | 18.7 | 0.1145 |
| claude | memory | 3/3 | 2952 | 20625 | 74 | 3.8 | 0.0508 |

## aim-dashboard-permission  (`recipe`)

> In the ai_metering module, which permission machine name lets a user view the AI cost/usage dashboard? Give the exact permission.

| Provider | Arm | Correct | In tok | Cache-rd | Out tok | Time (s) | Cost $ |
|---|---|---|--:|--:|--:|--:|--:|
| claude | vanilla | 3/3 | 2956 | 54324 | 431 | 15.1 | 0.0901 |
| claude | skill | 3/3 | 2960 | 97594 | 605 | 17.6 | 0.1209 |
| claude | memory | 3/3 | 2952 | 20617 | 54 | 3.6 | 0.0502 |

## aim-pricing-plugin  (`recipe`)

> In ai_metering, what is the plugin type I implement to add a custom source of per-model pricing? Name the plugin type.

| Provider | Arm | Correct | In tok | Cache-rd | Out tok | Time (s) | Cost $ |
|---|---|---|--:|--:|--:|--:|--:|
| claude | vanilla | 3/3 | 1970 | 36874 | 746 | 40.0 | 0.2593 |
| claude | skill | 3/3 | 2958 | 77069 | 656 | 21.4 | 0.1188 |
| claude | memory | 3/3 | 2952 | 20615 | 49 | 4.9 | 0.0501 |

## aim-record-hook  (`recipe`)

> In ai_metering, which Drupal hook lets me alter a usage record before it is written to the database? Give the exact hook function name.

| Provider | Arm | Correct | In tok | Cache-rd | Out tok | Time (s) | Cost $ |
|---|---|---|--:|--:|--:|--:|--:|
| claude | vanilla | 3/3 | 3472 | 68380 | 954 | 29.8 | 0.169 |
| claude | skill | 3/3 | 2958 | 77098 | 658 | 21.1 | 0.1167 |
| claude | memory | 3/3 | 2952 | 20617 | 167 | 6.3 | 0.0515 |

## aim-usage-table  (`recipe`)

> Where does the ai_metering module store its per-AI-call usage log — name the database table.

| Provider | Arm | Correct | In tok | Cache-rd | Out tok | Time (s) | Cost $ |
|---|---|---|--:|--:|--:|--:|--:|
| claude | vanilla | 3/3 | 2956 | 56177 | 862 | 36.5 | 0.1955 |
| claude | skill | 3/3 | 2956 | 55640 | 417 | 11.5 | 0.0945 |
| claude | memory | 3/3 | 2952 | 20607 | 73 | 6.0 | 0.0507 |
