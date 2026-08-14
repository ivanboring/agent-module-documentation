<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Registers the DSFR (Système de Design de l'État français) distribution's core, utility and component CSS/JS as attachable Drupal asset libraries.

---

The DSFR ships as a set of built CSS/JS files (a `core`, a `utility` bundle, and one folder per UI component) under `libraries/dsfr/dist/`. This module makes those consumable from Drupal without hand-writing a libraries entry per component. A static `dsfr_libraries.libraries.yml` declares the `core` library (core.min.css plus the module/nomodule JS variants) and a `utility` CSS library. `hook_library_info_build()` then dynamically scans `libraries/dsfr/dist/component/*` at runtime and registers one library per component directory, attaching its `<component>.min.css` and module/nomodule JS variants and depending on `dsfr_libraries/core`. Themes and modules attach these libraries (e.g. `dsfr_libraries/core`, `dsfr_libraries/button`) as needed.

The module is purely a library declarer: no routes, permissions, services, blocks or config. `hook_requirements()` adds a runtime status-report error if the `libraries/dsfr/` folder is missing, since the assets must be provided separately (the module does not vendor the DSFR itself). Installation therefore means placing the DSFR distribution at `web/libraries/dsfr` and attaching the libraries from your theme/templates.

---

- Attach the DSFR core styles and scripts to a theme.
- Add the DSFR utility CSS bundle.
- Attach a single DSFR component library (e.g. button).
- Auto-register every DSFR component as a Drupal library.
- Avoid hand-writing a libraries.yml entry per component.
- Depend on `dsfr_libraries/core` from custom libraries.
- Load module/nomodule JS variants correctly per component.
- Build a French-government-compliant Drupal theme.
- Reference DSFR assets by library name in render arrays.
- Verify the DSFR library presence via status report requirements.
- Keep DSFR assets versioned outside the module (in libraries/).
- Serve minified DSFR CSS/JS marked as minified.
- Attach component libraries only on pages that need them.
- Integrate DSFR with a component-based theme.
- Provide DSFR styling to modules via `#attached['library']`.
- Upgrade DSFR by swapping the libraries/dsfr distribution.
- Use with a subtheme that consumes DSFR tokens.
- Detect a missing DSFR install before rendering.
- Standardize DSFR usage across multiple themes.
- Expose new DSFR components automatically after adding their folder.