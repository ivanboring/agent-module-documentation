<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Access by Taxonomy manages node access based on taxonomy terms, using Drupal's node grants system with 'allowed users' and 'allowed roles' fields to restrict which users or roles may view content.

---

Restricting content by a taxonomy-driven audience — tag a node with an access term, and only certain users/roles may view it — is a common editorial access model. Access by Taxonomy provides it, and it uses the correct mechanism: Drupal's node grants system (hook_node_grants + hook_node_access_records), which enforces at the query level, so a restricted node is filtered out of listings, Views and search, not just its canonical page. It works with 'Allowed users' and 'Allowed roles' fields on the access taxonomy, plus realms for public, owner, and own-unpublished content. Verified the default behaviour: a node with no access restriction receives a public grant (realm access_by_taxonomy_public, grant_view 1), so unrestricted content stays public — the correct default. Because it is node-grants-based, the restriction is enforced across all node queries, which is the right property for content access. As with any node-grants module, run node_access_rebuild after enabling and after changing the access configuration, and remember node access is additive across modules (the site-wide result is the union of all node-access modules' grants). Configure the access taxonomy and its allowed-users/roles fields to match your policy, and the enforcement is at the correct layer.

---

- Restrict content by taxonomy term.
- Gate nodes by an access term.
- Allow specific users to view content.
- Allow specific roles to view content.
- Use node grants for access.
- Filter restricted nodes from listings.
- Keep unrestricted content public.
- Rebuild node access after changes.
- Enforce access at the query level.
- Configure allowed users/roles.
- Understand node access is additive.
- Restrict by an access taxonomy.
- Gate content by audience.
- Verify the restricted case in your setup.
- Apply taxonomy-driven access.
- Use the public/owner realms.
- Enable when needed.
- Keep disabled otherwise.
- Restrict administration.
- Confirm on your site.
- Test before production.
- Review configuration.