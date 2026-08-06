<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Navigation + supplies a shared editing interface — an edit mode, a tool plugin type, sidebars and keyboard shortcuts — that several page-building modules plug into rather than each inventing their own.

---

It arrived as the substrate under Layout Builder +, and that is the clearest way to understand it. A suite of editing tools all need the same things: a way to enter and leave "edit mode", somewhere to put tool buttons, a sidebar that opens with tool-specific controls, an entity being edited, hotkeys, and a consistent look. Building that once per module produces four incompatible toolbars; building it once and offering it as plugin types produces one. `ToolPluginManager` and `ToolInterface` define the tools, `ModePluginManager` and `ModeInterface` the modes that can be enabled per entity type and bundle, `SidebarInterface` the panels, and `ViewModeTracker` and the tempstore integration keep track of what is being edited in which view mode.

Its routes reflect that: loading an editable page, enabling, disabling and configuring a mode for an entity type and bundle, and saving a per-user hotkey. Three permissions separate the concerns properly — `use toolbar plus edit mode` for editors, `configure toolbar plus modes` for the people who decide which modes exist where, and `administer Navigation + configuration` for the settings page at `/admin/config/content/plus-suite`. The per-user routes act on the current user's own settings field, so one editor cannot change another's hotkeys or file associations.

Two practical points. It is **Drupal 11 only** and depends on core's `navigation` module plus `twig_events` and `tempstore_plus`, so adopting it is a stack decision rather than a module install — in most cases it arrives because `lb_plus` requires it. And its submodule `navigation_plus_entity_workflow` is **deprecated**: the description says the functionality has moved into the main module and the submodule will be deleted.

---

- Provide one editing toolbar for several tool modules.
- Enter and leave an edit mode on a page.
- Register a custom editing tool as a plugin.
- Add a sidebar panel for a tool's controls.
- Enable an editing mode for a specific entity type and bundle.
- Disable a mode where it does not apply.
- Configure a mode per bundle.
- Give editors keyboard shortcuts for tools.
- Let each editor set their own hotkeys.
- Track which view mode is being edited.
- Share tempstore handling across editing tools.
- Support Layout Builder + as its underlying UI.
- Separate who may edit from who may configure modes.
- Build a consistent editing experience across modules.
- Load an editable version of a page over AJAX.
- Plan a Drupal 11-only editing stack.
- Retire the deprecated entity workflow submodule.
- Audit which tools and modes a site has enabled.