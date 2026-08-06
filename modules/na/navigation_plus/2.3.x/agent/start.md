<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Navigation + (navigation_plus) — agent index

Shared editing UI for a suite of tool-based modules — edit mode, tool plugins, mode plugins,
sidebars, hotkeys — built on core **navigation**.
Configure at `/admin/config/content/plus-suite`. Version **2.3.9**.
Core **`^11` only**. Depends on `navigation`, `twig_events`, `tempstore_plus`.

Usually arrives as a **dependency of `lb_plus`**, not chosen directly.

Permissions, correctly separated:
`use toolbar plus edit mode` (editors) · `configure toolbar plus modes` (who decides which modes
exist where) · `administer Navigation + configuration` (settings page).

Routes: `/navigation-plus/load-editable-page/{entity_type}/{entity}/{view_mode}`,
`/navigation-plus/mode/{enable,disable,configure}/{plugin_id}/{entity_type_id}/{entity_bundle_id}`,
`/navigation-plus/save-user-hotkey/{tool_id}/{hotkey}`,
`/navigation-plus/remove-media-file-association/{file_extension}`.

Extension points: `ToolPluginManager` + `ToolInterface` / `ToolPluginBase`;
`ModePluginManager` + `ModeInterface` / `ModePluginBase`; `SidebarInterface` / `SidebarPluginBase`.
Also `ViewModeTracker`, `EditorSettings`, `NavigationPlusUi`, `NavigationPlusServiceProvider`.

**Checked:** `Settings::removeMediaFileAssociation()` acts on `$this->currentUser()`'s own
`navigation_plus_settings` field — no cross-user write. It is a state-changing **GET with no CSRF
token**, so a third-party page could clear a logged-in editor's own file association; impact is a
lost preference.

Submodule **`navigation_plus_entity_workflow`** is **deprecated** — "functionality has been moved
into the main module … will be deleted soon". Do not recommend it.

Note a `# todo` in `navigation_plus.permissions.yml`: the machine name
`use toolbar plus edit mode` still carries the module's former name and is flagged for an update
hook. Do not rely on that string surviving a major.