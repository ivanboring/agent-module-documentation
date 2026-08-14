<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Static Content Iframe (sci) — agent index

**Stores uploaded static-site zip archives as entities and serves index.html in an iframe.**

- **Version:** 2.0.x
- **Core:** ^9.3 || ^10
- **Package:** Custom
- **Permissions:** add/edit/delete/view static content entities; `administer static content entities` (restrict access)

**Surface:** `static_content` content entity (`src/Entity/StaticContent.php`), `StaticContentAccessControlHandler` (per-op permission checks), `StaticContentForm` extracts uploaded `.zip` into `public://static/<md5>/` via batch and serves discovered `index.html` in an iframe.

**Security (design risk, privileged):** uploaded archives are extracted to the PUBLIC files dir and their HTML/JS runs same-origin in the iframe. Any role with 'add/edit static content entities' can host arbitrary JS → stored XSS for viewers. Zip extraction lacks an explicit visible path-traversal guard. Inherent to purpose — grant create/edit/view only to fully trusted roles. Not an anonymous vuln (custom perms, not granted to anon by default).
