<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Better field descriptions (better_field_descriptions) — agent index

Themeable, repositionable field help text plus a **bulk editing screen** for it. No dependencies.
Configure at `/admin/config/content/better_field_descriptions`. Version **2.0.3**.
Core requirement `^9.3 || ^10 || ^11`.

**Two things it fixes:**
1. descriptions are otherwise edited **one field settings form at a time** — here, one screen
   listing bundles and their fields;
2. the description renders through a **theme template** with a configurable **position** (above
   label / below label / below widget) instead of unstyled fine print under the widget.

Permissions:
- `administer better field descriptions settings` — the settings form.
- `add better descriptions to fields` — the *bundles* and *entities* screens, where the text is
  actually written.

Markup handling — **checked, and correct**: descriptions accept HTML, and both the form defaults
and the rendered output pass through **`FieldFilteredMarkup::create()`** (core's restricted
allowed-tags filter). A permission holder can add emphasis and links, not scripts or event
handlers.

Note the second permission is **not** marked `restrict access`, and it lets its holder change help
text across **every bundle on the site** — grant it as an editorial-lead permission, not a general
editor one.
