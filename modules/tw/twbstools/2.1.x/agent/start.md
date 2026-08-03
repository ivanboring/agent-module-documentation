# Bootstrap tools (twbstools) — agent index

Companion to the **Bootstrap 5 theme**. Adds one page: a Bootstrap 5 **style guide / cheatsheet** at
`/styleguide`. No config, schema, permissions, plugins, entities, or Drush (`configure` null). There is
nothing to configure — this doc is the complete reference.

Key facts:
- Route `twbstools.styleguide.render` → path `/styleguide`, controller
  `StyleguideController::render()`, permission **`access content`** (public).
- Controller loads the bundled static file `resources/cheatsheet/index.html` (a saved getbootstrap.com
  cheatsheet), rewrites the absolute example URL to relative, then uses `Html::load()` + `DOMXPath` to
  pull the `<aside>` nav and the `.bd-cheatsheet` node, returning them as `#markup` via
  `Markup::create()`. The HTML is module-bundled and static (not user-supplied).
- Attaches asset library `twbstools/twbstools.cheatsheet` (`resources/cheatsheet/index_files/cheatsheet.css`
  + `cheatsheet.js`) which **depends on `bootstrap5/bootstrap5-js-latest`** — install/enable the
  Bootstrap 5 theme or the library dependency is unmet and the page renders unstyled/broken.
- Discovery: menu link + local task under *Configuration → Development* (`system.admin_config_development`).
- `.info.yml` declares no module dependencies; the Bootstrap 5 theme is a soft (library) requirement.
