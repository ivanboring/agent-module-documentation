<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Library Manager (library_manager) — agent index

Admin UI over Drupal's asset library system: `library_definition` config entities, in-browser
JS/CSS authoring (CodeMirror), and `hook_library_info_alter()`-based overrides of any extension's
libraries. Configure at `/admin/structure/library/settings`; list at `/admin/structure/library`;
report at `/admin/reports/libraries`. Version **3.0.6**. Core `^10 || ^11`.
Depends on `system`, `codemirror_editor`.

Permission: **`administer libraries`**, `restrict access: true`, gates everything except the
report (`access site reports`). Keep it restricted — it is arbitrary JS on every page **by
design**.

Per-file settings: `preprocess`, `minified`, `header`, `typemodulecheck` (→ `type="module"`),
`nomodulecheck` (→ `nomodule`), `weight`, `external`, plus code / upload / URL as the source.
Operations: build, export, duplicate, delete; assets check form.

**Defect to state: `libraries_path` has no `validateForm()` at all.** Generated files go to
`$libraries_path/{definition_id}/{file_name}` relative to `DRUPAL_ROOT`. **Verified:** set to
`../lm-escape-probe`, the file landed above the docroot. Filenames themselves *are* validated
(anchored `\.js$` / `\.css$` + `..` check, applied to **both** the JS and CSS forms — no
asymmetry), so no `.php` write; the risks are `EXISTS_REPLACE` over existing site assets and
files persisting after uninstall. Leave `libraries_path` at its default
(`sites/default/files/libraries/custom`).

**Governance point worth raising:** code authored here is *configuration*, not repository code. It
exports and deploys, but it will not appear in a theme code review or a repo grep.