<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Body Inject — agent index

Injects **admin-configured content into the body field by conditions** (append/prepend shared snippets via
"profiles" without editing each node). Provides `administer body_inject profiles`. Version **1.1.1-beta3**.
Core `^8||^9||^10||^11`.

Content/admin — injected content is **admin-authored markup** inserted into rendered bodies (admin
content-injection capability): gate the permission to **trusted admins**, keep snippets trusted. No other
access role.
