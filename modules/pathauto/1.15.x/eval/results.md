# Eval results — pathauto 1.15.x

Skill under test: `drupal-module-docs` · runs per cell: 3 · model: claude-opus-4-8 · effort: medium

`Correct` = live-state verify (execution cases) or text assertions (recipe cases). `n/a` = provider CLI not installed.

## pathauto-blog-pattern-layman  (`execution` · persona: layman)

> On my website, blog posts currently have ugly web addresses like `example.com/node/42`. I want every blog article's address to read like `example.com/blog/the-post-title` instead — built automatically from the post's title — for all articles from now on. Please set this up on the site so it just works, and tell me in one line what you did.

| Provider | Arm | Correct | In tok | Out tok | Time (s) | Cost $ |
|---|---|---|--:|--:|--:|--:|
| claude | vanilla | 3/3 | 3142 | 4585 | 101.1 | 0.357 |
| claude | skill | 3/3 | 3188 | 4618 | 111.3 | 0.3817 |

## pathauto-blog-pattern-expert  (`execution` · persona: drupal-expert)

> On this Drupal site (DDEV, drush available), add a Pathauto pattern for the Article content type with the token pattern `blog/[node:title]`, and apply it via drush/config so new article nodes get that URL alias. Give a one-line summary of what you changed.

| Provider | Arm | Correct | In tok | Out tok | Time (s) | Cost $ |
|---|---|---|--:|--:|--:|--:|
| claude | vanilla | 3/3 | 3145 | 5847 | 131.7 | 0.422 |
| claude | skill | 3/3 | 3140 | 2612 | 72.2 | 0.2673 |

## pathauto-user-pattern  (`execution` · persona: drupal-expert)

> On this Drupal site (drush available), configure Pathauto so User accounts automatically get URL aliases of the form `users/[user:account-name]`. Apply it to the running site with drush/config — do not just describe it. State in one line what you changed.

| Provider | Arm | Correct | In tok | Out tok | Time (s) | Cost $ |
|---|---|---|--:|--:|--:|--:|
| claude | vanilla | 3/3 | 3095 | 2044 | 65.1 | 0.2078 |
| claude | skill | 3/3 | 3049 | 1590 | 45.1 | 0.1924 |

## pathauto-separator-underscore  (`recipe`)

> On this Drupal site, what is the exact drush command to change the Pathauto word separator from a hyphen to an underscore? Answer with the command only.

| Provider | Arm | Correct | In tok | Out tok | Time (s) | Cost $ |
|---|---|---|--:|--:|--:|--:|
| claude | vanilla | 3/3 | 2952 | 320 | 14.5 | 0.0458 |
| claude | skill | 3/3 | 2958 | 465 | 19.9 | 0.1163 |

## pathauto-max-length  (`recipe`)

> On this Drupal site, give the exact drush command to set Pathauto's maximum generated alias length to 100. Answer with the command only.

| Provider | Arm | Correct | In tok | Out tok | Time (s) | Cost $ |
|---|---|---|--:|--:|--:|--:|
| claude | vanilla | 3/3 | 2952 | 158 | 7.1 | 0.0279 |
| claude | skill | 3/3 | 2957 | 413 | 16.4 | 0.1074 |

## pathauto-transliterate  (`recipe`)

> In Pathauto, which setting makes it convert accented characters (like `é` to `e`) into plain ASCII when building an alias? Name the exact setting key.

| Provider | Arm | Correct | In tok | Out tok | Time (s) | Cost $ |
|---|---|---|--:|--:|--:|--:|
| claude | vanilla | 3/3 | 2952 | 686 | 14.2 | 0.059 |
| claude | skill | 3/3 | 2958 | 667 | 20.1 | 0.1178 |

## pathauto-alias-alter-hook  (`recipe`)

> Which Drupal hook do I implement to modify a generated URL alias string just before Pathauto saves it? Give the exact hook function name.

| Provider | Arm | Correct | In tok | Out tok | Time (s) | Cost $ |
|---|---|---|--:|--:|--:|--:|
| claude | vanilla | 3/3 | 2952 | 427 | 11.4 | 0.0346 |
| claude | skill | 3/3 | 2958 | 741 | 20.6 | 0.1196 |
