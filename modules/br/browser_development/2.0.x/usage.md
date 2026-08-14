<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Browser Development gives a developer an in-browser code editor to write CSS/SCSS and JavaScript that is compiled and attached to the current theme, for quick front-end tweaking without a local toolchain.

It ships a home page, an editor page, a settings form, and a POST `api` endpoint that dispatches to SCSS compilation (`ScssCompiler` / `LiveScssCompiler`) and to a storage layer (`Processing/Storage`, `FormsStorage`, `SavingCssToDisk`) that persists compiled CSS to disk and manages a custom config-entity (`BrowserDevelopmentStorage`). The editor talks to the API by POSTing JSON commands (`live`, `compiled`, `open`). This is a development/QA convenience tool, not something to run on production.

Typical setup (dev only): enable the module, open `/admin/browser-development`, use the editor to author styles/scripts, and save/compile them into the active theme.

---

Short summary: an in-browser CSS/SCSS + JS editor that compiles and applies code to the current theme.

It solves the need to iterate on theme CSS/JS from the browser (live SCSS compile, save-to-disk) without editing files locally, useful in prototyping and QA environments.

Operationally this module writes compiled CSS to the filesystem and defines a config entity for stored snippets — a powerful, dev-oriented surface. **All four routes are declared with `_permission: 'TRUE'`, which requires a permission literally named “TRUE”; no role holds it, so every route (including the POST `api` that compiles SCSS and writes CSS to disk) fails closed and is inaccessible to all users** as shipped. Treat this as a local development module; do not deploy it to production.

---

- Write CSS/SCSS for the current theme from the browser (dev environments).
- Author JavaScript snippets applied to the current theme.
- Live-compile SCSS to CSS while editing.
- Save compiled CSS to disk for the active theme.
- Store code snippets as `BrowserDevelopmentStorage` config entities.
- Reopen previously saved snippets via the editor's `open` command.
- Prototype front-end changes without a local build toolchain.
- Iterate on styles quickly during QA or design review.
- Use the editor page at `/admin/browser-development/editor`.
- Adjust module behaviour on the settings page.
- Compile SCSS through the POST `api` endpoint (JSON commands).
- Manage a list of stored development snippets.
- Delete a stored snippet via its delete form.
- Keep experimental CSS/JS scoped to the current theme.
- Use as a throwaway developer aid on non-production sites.
- Note: as shipped, routes fail closed (`_permission: 'TRUE'`) — grant is impossible without a code change.
