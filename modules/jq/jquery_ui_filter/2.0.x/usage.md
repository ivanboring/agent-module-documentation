<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
jQuery UI Filter converts plain heading-and-content HTML into jQuery UI **accordion** or **tabs** widgets: editors write ordinary headings, and the filter turns the marked-up region into an interactive widget at render time.

---

The filter (`jQueryUiFilter`, *jQuery UI accordion and tabs widgets*) scans rendered text for the structure it expects — headings followed by content inside a wrapper — and converts it into the markup jQuery UI needs, attaching the accordion or tabs behaviour from the corresponding contrib modules. Because jQuery UI was removed from Drupal core, the module depends on the community-maintained `jquery_ui`, `jquery_ui_accordion` and `jquery_ui_tabs` projects (with minimum versions pinned in `info.yml`), and it adds a settings page at `/admin/config/content/jquery_ui_filter` (`configure: jquery_ui_filter.settings`) alongside the per-format filter settings. Its own JavaScript (`js/jquery_ui_filter.js`) wires the widgets up, handles deep-linking to a specific tab or panel, and keeps the widgets accessible. Content stays plain HTML, so disabling the filter leaves readable headings and text rather than broken markup — the usual argument for doing this at filter level rather than in the editor.

---

- Turn a long FAQ page into an accordion.
- Convert documentation sections into tabs.
- Let editors create tabbed content with plain headings.
- Keep content readable when the filter is disabled.
- Deep-link to a specific accordion panel.
- Collapse lengthy policy text into sections.
- Present product specifications in tabs.
- Avoid teaching editors a widget-building UI.
- Apply widget conversion per text format.
- Keep markup semantic for search engines.
- Provide accessible expand/collapse behaviour.
- Convert legacy content into interactive widgets.
- Reduce page length on mobile devices.
- Group related content without paragraphs.
- Style widgets with the jQuery UI theme.
- Support both accordion and tabs from one filter.
- Migrate content that already uses heading structure.
- Give editors a predictable authoring pattern.
- Keep interactive behaviour out of the stored HTML.
- Disable the widgets site-wide by turning the filter off.
