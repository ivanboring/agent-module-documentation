<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# DSFR for Drupal - Picker — agent index

Provides **picker fields for DSFR icons and pictograms** (French State Design System iconography — for
DSFR-compliant gov sites). Two field types (`dsfr4drupal_picker_icon`, `dsfr4drupal_picker_pictogram`), two
CKEditor 5 buttons, matching text-format filters (`<dsfr-icon>`, `<dsfr-pictogram>`), SDC components, and
example/link/media submodules. Config at `dsfr4drupal_picker.settings`. Version **1.2.0** (branch 1.2.x).
Core `^10.3 || ^11 || ^12`. Depends on core `field`.

Needs two external libraries at the webroot: the **DSFR** library (`libraries/dsfr/dist/`, `gouv/dsfr`) whose
icons/pictograms are auto-detected, and **FontIconPicker** (`libraries/fonticonpicker/`, jQuery) for the
widget UI; the status report errors until both are present. Requires PHP ext-iconv.

Content-editing/fields — the selected icon/pictogram is authored data; the widget offers a static, trusted set
scanned from the DSFR library (a core Select validates submissions against it). No module-defined permissions;
uses core `administer site configuration` (settings) and `filter_format.use` entity access (CKEditor dialogs).
Rendered output goes through SDC components with escaped props.
