<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Drush Webmaster — agent index

**Validated Drush commands** for AI-assisted site management — create content types, fields, media
types; run core search — each backed by input **validators** (machine names, bundle refs). Requires
PHP 8.1; depends on `node`, `field`, `user`. Provides permissions + Drush commands. Version
**1.0.0-beta1**. Core `^10.3||^11`.

**Does NOT shell-exec AI output** — the agent picks/parameterises provided commands. Still performs
real structural changes — run in appropriate environments (CLI is already privileged).
