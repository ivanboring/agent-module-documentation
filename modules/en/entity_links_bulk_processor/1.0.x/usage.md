<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Entity Links Bulk Processor bulk-converts internal entity links.

---

Entity Links Bulk Processor **bulk-converts internal entity links** in content — scanning body/text fields
and rewriting internal links (e.g. path-alias URLs) to canonical entity references/links, so links stay valid
when aliases change, with an `entity_links_autosave` submodule. It depends on core Filter and Path Alias,
provides its own permissions, in the Content package.

Use it to normalize internal links across content. It is an admin/content-maintenance tool run by privileged
users; it rewrites content links in bulk (a privileged, content-modifying action — back up and run as a trusted
operator), gated by its permission. It has no access-control role beyond that. Run the bulk link conversion.

---

- Bulk-convert internal entity links.
- Rewrite alias URLs to canonical links.
- Keep links valid across alias changes.
- Depend on core Filter and Path Alias.
- Provide its own permissions.
- Provide an autosave submodule.
- Rewrite content links in bulk (privileged).
- Back up + run as a trusted operator.
- Have no access-control role beyond permission.
- Run the bulk conversion.
- Handle link conversion.
- Convert links.
- Configure the processor.
- Handle content.
- Rewrite links.
- Configure links.
- Handle maintenance.
- Normalize links.
- Restrict the permission.
- Provide bulk link conversion.
