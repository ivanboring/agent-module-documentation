<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Layout Builder extras – View mode selector (layoutbuilder_extras_view_mode_selector) — agent index

Curates the view-mode picker in **Layout Builder**: choose which view modes are exposed and give
them icons. Depends on core `layout_builder`. Core requirement `^10 || ^11`.

Key facts:
- Configuration lives on the **block content type edit form**
  (`src/BlockContentTypeEditForm.php`), not on a page of its own — so there is no route and no
  permission; access follows whoever may administer block types.
- `src/ViewModeSelectorHelper.php` + `src/Plugin/` apply the selection to the Layout Builder UI.
- **Unconventional directory layout:** schema is in `install/schema`, not `config/schema`. Look
  there when tracing the stored settings.
- Purely editorial curation — hidden view modes still exist and remain usable from code, Views
  and other renderers. It changes what editors are *offered*, never what is possible.
- The "on steriods" typo in the description is upstream.
