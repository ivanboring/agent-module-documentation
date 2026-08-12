<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Pylot Bridge — agent index

**Pylot/Bridge CMS tourism-product import + frontend endpoints**. Version **11.0.7**. Core `^9||^10||^11`.

**SECURITY (11.0.7):** anonymous `_access: TRUE` routes — `/pylot_bridge/resize_image` is an **SSRF** (server fetches an attacker `file` URL, returns the image; TLS verify disabled), `/pylot_bridge/send_email_recaptcha` is an **open mail relay** (attacker `dest`), `/pylot_bridge/start_import` triggers re-imports. Restrict/allowlist. Depends on core `node`, `components`.