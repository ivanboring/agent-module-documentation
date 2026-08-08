<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Webform Custom JavaScript (webform_ct) — agent index

Attaches **custom JavaScript to a webform** (e.g. confirmation). Version **1.0.0-alpha3**.

**Done right:** the custom-JS field is gated by a **dedicated permission**
(`webform_ct.administer_webform_confirmation_javascript`) with `#access` control — not folded into
general webform editing. Custom JS is a **stored-XSS capability** (runs in visitors' browsers) —
grant only to fully-trusted developers/admins, never ordinary form builders.