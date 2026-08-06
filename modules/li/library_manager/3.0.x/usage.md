<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Library Manager gives Drupal's asset library system an administrative interface: define new libraries, override existing ones, and author the JavaScript and CSS in a CodeMirror editor that then gets written to disk and attached like any other library.

---

Libraries are normally declared in a `*.libraries.yml` file and altered with `hook_library_info_alter()`, which is correct and also means a deployment for every change. This module exposes the same machinery as `library_definition` config entities: add JS and CSS files by code, by upload, by local path or by external URL; set `preprocess`, `minified`, `header`, `type="module"`, `nomodule` and weight per file; declare dependencies, version and licence; and override any library any extension declares, through the module's own `hook_library_info_alter()`. There is a build form, an export, a duplicate operation and an assets check report at `/admin/reports/libraries`.

That is genuinely useful for a small class of jobs — adding a third-party widget's snippet, patching the load order of a stubborn library, injecting a tracking or accessibility script, or prototyping a front-end change without a release. It also has an obvious cost: front-end code stops living in version control. Anything added here is site configuration, so it exports and deploys with config, but it will not show up in a code review of the theme and it will not be found by a developer grepping the repository. Use it for genuine site configuration, not as a substitute for the theme.

**`administer libraries` is `restrict access: true` and should stay that way** — it is arbitrary JavaScript execution on every page by design. One defect to know about: `libraries_path`, which decides where generated files are written, has no validation at all, and a relative path escapes the docroot — verified, a definition wrote its `.js` one level above `web/`. Filenames themselves *are* validated (anchored `\.js$` / `\.css$` plus a `..` check, applied symmetrically to both the JS and CSS forms), so this is not a route to writing PHP; the risks are overwriting existing site assets and leaving files behind after the module is uninstalled. Leave `libraries_path` at its default unless there is a reason not to.

---

- Define a new asset library without editing a `.libraries.yml`.
- Override a library declared by core, a module or a theme.
- Fix the load order of a stubborn third-party library.
- Add a small JS snippet for a third-party widget.
- Author CSS in the browser with syntax highlighting.
- Upload a JS or CSS file and attach it as a library.
- Reference an external library by URL.
- Mark a script as `type="module"` or `nomodule`.
- Load a script in the header rather than the footer.
- Control preprocessing and minification per file.
- Set a library's version and licence metadata.
- Declare dependencies between libraries.
- Duplicate an existing library definition as a starting point.
- Export a library definition.
- Review which libraries a site defines at `/admin/reports/libraries`.
- Prototype a front-end change without a deployment.
- Ship a library definition through configuration deployment.
- Audit administrator-authored front-end code on an inherited site.