<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Phone Label (phone_label) — agent index

Core telephone field **plus an optional label** stored alongside the number.
Version **1.2.0**. Core `^10.3 || ^11`. Depends on core `telephone`.

Three classes, no routes, no permissions, no config page:
`Plugin/Field/FieldType/PhoneLabelItem.php`, `FieldWidget/PhoneLabelDefaultWidget.php`,
`FieldFormatter/PhoneLabelFormatter.php`.

**It is a separate field type, not a setting on core's.** So there is **no in-place upgrade** from
an existing `telephone` field — converting means adding a new field and migrating values. Decide
before content exists.