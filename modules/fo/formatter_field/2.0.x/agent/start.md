<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Formatter field (formatter_field) — agent index

A field type whose value is a **formatter choice** for another field, applied per entity.
Version **2.0.0**. Core `^8 || ^9 || ^10 || ^11`. Depends on `field`.
No routes, permissions, or config objects.

Plugins: `Plugin/Field/FieldType/FormatterItem`, `Plugin/Field/FieldWidget/FormatterWidget`,
`Plugin/Field/FieldFormatter/FromFieldFormatter` (renders the target field with the chosen
formatter), `Plugin/Field/FieldFormatter/DefaultFormatter`.

Canonical use (from the README): a page type with an image field where core would force one image
style for every page; here the style is picked per node.

The choice is a field value, so it is **revisioned and translatable** and visible on the node form
rather than in Manage display.

**Governance point to raise:** this deliberately hands display control to editors. Right for
marketing landing pages, wrong for a strictly templated catalogue. Scope it to specific bundles
and constrain which formatters the widget offers.