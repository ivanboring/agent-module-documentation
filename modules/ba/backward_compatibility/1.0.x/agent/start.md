<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Backward Compatibility (backward_compatibility) — agent index

Turns off Drupal's core-compatibility gate so a module whose `core_version_requirement`
excludes the running core can still be installed and enabled. It restores **no** APIs.

- **Version:** 1.0.2 (2023), package `Custom`, declares `^9 || ^10 || ^11`.
- **Provides:** no permissions, no routes, no services, no config, no Drush commands, no plugin types.
- **Dependencies:** none.

## What it actually does (read the source — it is ~40 lines total)

The entire behaviour is two hooks in `backward_compatibility.module` and `.install`:

1. **`backward_compatibility_system_info_alter(&$info, Extension $file, $type)`** sets
   `$info['core_incompatible'] = FALSE;` — **unconditionally, for every extension** Drupal
   inspects. This is what suppresses the "incompatible with this version of Drupal" block on the
   module-install screen. There is no per-module check; the flag is cleared for all of them.
2. **`backward_compatibility_install()`** calls `module_set_weight('backward_compatibility', -1000)`
   so the alter runs before other modules' info alters. (Verified on-site: weight is `-1000` in
   `core.extension`.)

`backward_compatibility_help()` adds a one-paragraph help page. That is the whole module.

## Critical correction vs. the module name

It is **not** a compatibility/polyfill layer. It defines no functions, no `class_alias`, no
`.services.yml`, no shims. If an enabled module calls a function or service that core genuinely
removed, it will still **fatal at runtime** — this module only removes the *install-time* refusal.
The maintainer says so directly: "This module does not fix old Drupal modules with deprecated code."

## Honest workflow for an agent

1. Enable `backward_compatibility`.
2. Enable the target module that Drupal called incompatible.
3. Observe: if it runs, its metadata was merely stale (it only lacked a widened
   `core_version_requirement`); if it fatals, real porting work is required and this module changed
   nothing but the timing of the failure.
4. Treat it as a temporary upgrade-testing tool, not a production fixture — it disables a site-wide
   guardrail for **all** modules at once.

## Files

- `data.json` — metadata (categories from the canonical taxonomy).
- `usage.md` — short / dense / use-case bullets.
- No solution-type subdirectories: the module exposes no API, permissions, config, or CLI surface
  worth a dedicated page.
