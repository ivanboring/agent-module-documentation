<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
SCSS Compiler builds a theme's Sass/SCSS into CSS from inside Drupal using the pure-PHP scssphp library — no Node toolchain, no build step in deployment — recompiling automatically when a source file changes.

---

The module wraps `scssphp/scssphp` in a `scss.compiler` service and points it at a theme's source directory. Configuration lives at `/admin/config/development/scss` (`scss.admin`, permission `administer site configuration`): you pick the **theme**, the **directory containing SCSS/SASS sources** (typically `sass` or `scss`, relative to the theme root), the **destination CSS directory** (typically `css`), any **additional import paths**, plus toggles for whether compilation is **active** and whether it should also run **for logged-out users**, along with output formatting and source-map options. Recompilation is triggered by `ScssMonitor`, an event subscriber on `KernelEvents::REQUEST` that checks whether any watched source file is newer than the last compile (tracked in state, keyed per theme) and compiles if so — which is why the compile-for-anonymous toggle matters: leaving it off means only authenticated traffic triggers rebuilds. Files can be excluded with an ignore list, and extra directories can be watched. For deployments there is a Drush command (`drush scss`, declared the legacy `scss.drush.inc` way) so compilation can be part of a release rather than a page request. `checkConfiguration()` verifies the scssphp library is loadable and falls back to looking for a legacy `sites/all/libraries/scssphp/scss.inc.php` path.

---

- Compile a theme's Sass without installing Node.
- Let designers edit SCSS and see CSS regenerate on page load.
- Keep a build step out of the deployment pipeline.
- Compile SCSS on a host where npm is unavailable.
- Generate source maps for debugging styles.
- Choose compressed or expanded CSS output.
- Watch additional directories for changes.
- Ignore partials or vendor files during compilation.
- Add extra import paths for shared Sass libraries.
- Compile during deployment with a Drush command.
- Restrict recompilation to authenticated traffic to reduce overhead.
- Recompile automatically when a source file changes.
- Support several themes by switching the configured theme.
- Prototype design changes directly on a dev site.
- Avoid committing compiled CSS to the repository.
- Give a content team a themable site without front-end tooling.
- Use the compiled CSS through normal Drupal libraries.
- Track last-compile timestamps in state.
- Verify the scssphp library is present before compiling.
- Migrate a legacy site that used the old libraries path.
