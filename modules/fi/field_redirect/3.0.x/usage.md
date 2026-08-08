<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Field Redirect redirects to the uri value of a link, file or image field for content entities.

---

Field Redirect redirects an entity's page to the URI stored in one of its fields — so viewing an entity
(node etc.) redirects the visitor to the URL/file in a chosen link, file or image field, useful for
"link" content types that should send visitors straight to an external URL or document. It requires PHP 8.1,
is configured at `field_redirect.settings`, provides its own permissions.

Use it where an entity should redirect to a field's URI. **Security caution — this can be an open-redirect
vector.** It redirects to whatever URL/URI the field holds; if that field can contain an **arbitrary
external URL** and can be set by a less-trusted user (e.g. via a user-editable content type or a form),
an attacker could point it at a malicious site — an open redirect (useful for phishing). Mitigate by:
restricting who can set the field (trusted editors only), and/or limiting the field to internal/known
destinations. For internal/document redirects with trusted editors it is fine. It has no access-control
role. Configure which field drives the redirect.

---

- Redirect an entity to a field's URI.
- Send visitors to a field's URL/file.
- Support link content types.
- Require PHP 8.1.
- Configure at field_redirect.settings.
- Provide its own permissions.
- CAUTION: possible open redirect.
- Understand it redirects to the field's URL.
- Restrict who can set the field (trusted editors).
- Limit the field to internal/known destinations.
- Mitigate phishing via open redirect.
- Have no access-control role.
- Configure the driving field.
- Redirect to documents.
- Handle field-based redirects.
- Guard against arbitrary URLs.
- Redirect entities.
- Configure redirects.
- Send to external URLs cautiously.
- Handle open-redirect risk.
