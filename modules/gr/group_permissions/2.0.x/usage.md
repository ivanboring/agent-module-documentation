<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Group permissions lets an individual group override the permissions its group type defines, so two groups of the same type can grant their members different rights — without creating a new group type for every variation.

---

In the Group module, permissions belong to the *group type*: every group of type "Team" gives its Member role the same set of rights. That is a clean model until the twentieth team needs one extra permission, at which point the usual workaround is a proliferation of near-identical group types. This module adds a `group_permission` content entity that stores a per-group override set, and a form at `/group/{group}/permissions` where it is edited. The route's requirements are notable: `_group_permission: 'override group permissions'` — Group's own permission-checking access requirement, evaluated inside the group, not a site-wide Drupal permission — combined with `_group_permissions_enabled: 'TRUE'`, a custom access check in `src/Access/` so the form only appears where overriding is switched on. The rest of the module is the machinery that makes those overrides authoritative: `GroupPermissionsManager`, an access control handler, a `QueryAccess` namespace so listings respect the overrides, a storage schema class and an HTML route provider. The site-wide `override group permissions` permission is marked `restrict access: TRUE`, correctly — it is the ability to grant rights inside groups. The current release is 2.0.0-alpha12.

---

- Give one group extra permissions without a new group type.
- Let a group's owner tune what members may do.
- Model per-department variations of one group type.
- Delegate permission management into a group.
- Avoid group-type proliferation on a large site.
- Grant one project group publishing rights temporarily.
- Restrict a single group more tightly than its type.
- Keep overrides auditable as entities.
- Apply overrides consistently to listings and queries.
- Enable overriding only for selected group types.
- Support a franchise model with per-site rules.
- Let a community moderator adjust their own group.
- Revert a group to its type's defaults.
- Track who changed a group's permissions.
- Scale group configuration across hundreds of groups.
- Trial a permission change in one group first.
- Support tiered membership within one group type.
- Combine group overrides with site-wide roles.
