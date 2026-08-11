<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Ad Inserter is an ad-management module for placing ad units and ad code across a Drupal site.

---

Ad Inserter (Ad Manager) lets site administrators define advertising units and insert them into the page — banner slots, ad-network snippets, or house ads — with placement controlled from the admin UI. It provides a field-based mechanism so ad markup can be attached to content and rendered in configured positions.

Ad code is typically third-party JavaScript pasted by an administrator, so the `administer ad inserter` permission is effectively trusted: anyone who can edit ad snippets can inject arbitrary script into public pages. Restrict that permission to full administrators and review any externally-supplied ad tags. Requires the core `field` module.

---

- Define and manage ad units.
- Insert ad code into pages.
- Place banner/house ads.
- Embed ad-network snippets.
- Control placement from the admin UI.
- Attach ad markup via a field.
- Gate management with `administer ad inserter`.
- Treat ad-editing as a trusted, script-injecting capability.
- Restrict the permission to full admins.
- Review externally-supplied ad tags.
- Requires core `field`.
- Support Drupal 9, 10, and 11.
- Render ads in configured positions.
- Monetise content.
- Manage multiple ad slots.
- Serve house ads.
- Integrate third-party ad JavaScript.
- Keep ad configuration inside Drupal.
- Audit who can edit ad code.
- Avoid granting broadly.
