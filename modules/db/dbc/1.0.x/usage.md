<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Domain Base Css lets a multi-domain site load a different CSS file for each domain.

---

Built on the Domain module, it adds an admin form (`/admin/config/domain/domain_css_switcher`, permission `administer domain css switcher setting`) with one managed-file upload field per configured domain, restricted to `.css` files stored in `public://dbc/`. On every request `hook_page_attachments_alter()` resolves the active domain via `domain.negotiator`, reads the file id saved for that domain from `dbc.settings`, and appends a `<link rel="stylesheet">` to the page head pointing at the uploaded file's absolute URL.

The module is purely additive theming: it only injects a stylesheet, has no anonymous or mutating endpoints, and the only route is the permission-gated settings form. Setup is: enable Domain, upload one CSS file per domain on the settings form, and clear caches if a change does not appear.

---
- Give each affiliate domain its own look with a dedicated CSS file.
- Upload a per-domain stylesheet from the admin settings form.
- Override base-theme colours only on one domain of a multi-domain farm.
- Serve seasonal or campaign CSS to a single domain without a subtheme.
- Restrict who can manage domain CSS via the `administer domain css switcher setting` permission.
- Keep uploaded CSS in `public://dbc/` for easy inspection.
- Add a stylesheet to the head automatically on every page of a domain.
- Swap a domain's stylesheet by re-uploading the managed file.
- Distinguish staging vs production affiliates visually via CSS.
- Brand partner microsites differently while sharing one Drupal install.
- Apply print or accessibility tweaks scoped to a single domain.
- Layer domain CSS on top of the active theme rather than replacing it.
- Verify the active domain is detected by checking the emitted `<link>` tag.
- Remove a domain's custom CSS by clearing its upload field.
- Use `.css` upload validation to prevent non-CSS files being attached.
- Audit which domains have custom CSS from the settings form.
- Pair with Domain Access to align styling with content scoping.
- Troubleshoot missing CSS by clearing render/page caches.
