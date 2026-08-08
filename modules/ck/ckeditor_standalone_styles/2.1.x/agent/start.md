<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# CKEditor Standalone Styles — agent index

Configures the **CKEditor "Styles" dropdown separately from the editor config** (manage styles without giving
users full editor-config access). Depends on core `ckeditor5`; provides permissions. Version
**2.1.0-beta3**. Core `^10||^11`.

Mild **least-privilege** benefit — the full text-format/editor config (allowed HTML — XSS-relevant) stays
restricted while a role manages just the styles list. Styles produce markup governed by the format's allowed
tags. No access role beyond permission.
