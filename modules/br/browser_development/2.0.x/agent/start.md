<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Browser Development (browser_development) — agent index

**In-browser editor to author CSS/SCSS + JS, live-compile SCSS, and apply/save it to the current theme (developer/QA tool).**

- **Version:** 2.0.x (2.0.0-beta13) · **Core:** ^10 || ^11
- **Routes:** `browser_development.home` (`/admin/browser-development`), `.settings`, `.editor`, `.api` (POST). **All four use `_permission: 'TRUE'`.**
- **Config entity:** `BrowserDevelopmentStorage` (stored snippets, list/add/edit/delete forms + HTML route provider).
- **Processing:** `ScssCompiler`, `LiveScssCompiler`, `Storage`, `FormsStorage`, `SavingCssToDisk`, `FileSystemStructure`. The `api` controller decodes POSTed JSON and dispatches `live` / `compiled` / `open`, compiling SCSS and writing CSS to disk.
- **Submodule:** `browser_development_assist`.
- **Security:** the API compiles SCSS and writes CSS to the filesystem — a high-power surface — **but every route requires a permission literally named `TRUE`, which no role can hold, so all routes fail closed and are inaccessible as shipped.** Below-bar / dev-QA module; do not deploy to production. No disabled TLS, no external requests.
