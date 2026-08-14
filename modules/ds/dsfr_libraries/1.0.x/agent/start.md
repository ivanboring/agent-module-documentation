<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# DSFR libraries (dsfr_libraries) — agent index

**Declares DSFR (French State Design System) core/utility/component assets as Drupal libraries.**

- **Version:** 1.0.x (1.0.0-alpha3)
- **Core:** ^10 || ^11
- **No routes / permissions / services / config.**
- **Static libraries:** `dsfr_libraries/core` (core.min.css + module & nomodule JS), `dsfr_libraries/utility` (utility.min.css).
- **Dynamic:** `hook_library_info_build()` scans `libraries/dsfr/dist/component/*` and registers one library per component (CSS + module/nomodule JS), each depending on `dsfr_libraries/core`.
- **Requirement:** `hook_requirements()` errors on the status report if `DRUPAL_ROOT/libraries/dsfr/` is absent — the DSFR distribution must be installed separately.

**Security:** Pure asset-library declarer; no request handling, no user input, no mutating endpoints. Serves only static files from `libraries/dsfr/`. No security-relevant surface.