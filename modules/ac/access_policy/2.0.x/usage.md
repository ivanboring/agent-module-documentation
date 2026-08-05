<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Access Policy decides who may view or edit an entity by combining reusable **access rules** into named **policies** that authors can assign — moving per-item access out of role permissions and into something an editor can apply to a specific piece of content.

---

Drupal's permission system is role-based and site-wide: a role either may edit articles or may not. Real editorial requirements are frequently narrower — this document is for the finance team, that page is restricted until launch, this record belongs to one department — and the usual answers are Group (heavy, membership-based) or a node-access module with fixed semantics. Access Policy takes a third position: an administrator defines rules and assembles them into policies as configuration, and an author with the right permission assigns a policy to an entity from an **Access** tab. `AccessPolicyHandlerManager`, `AccessPolicyStorage`, and the discovery and validator interfaces make both rules and handlers pluggable; `access_policy_ui` supplies the administrative interface. Permissions are layered: `administer access policy entities` (marked `restrict access: true`) to define policies, `set entity access policy` to use the Access tab, plus per-policy permissions generated at runtime by `AccessPolicyPermissions::entityPermissions()` — so assigning a *particular* policy is separately grantable, which is what stops an author applying a restriction they should not control. A `/access_policy/403/{access_policy}` route is `_access: 'TRUE'`, correctly, since a denial page must render for someone who has just been denied. The release is 2.0.0-rc1.

---

- Restrict a document to one department.
- Let authors apply a named access policy to content.
- Combine reusable rules into a policy.
- Restrict a page until its launch date.
- Give finance-only visibility to some content.
- Avoid creating a role per access requirement.
- Delegate access decisions to editors safely.
- Control which policies an author may assign.
- Apply access rules across entity types.
- Show a tailored access-denied page.
- Model access requirements as configuration.
- Replace bespoke node access code.
- Restrict content by an arbitrary condition.
- Audit which policy applies to a document.
- Grant per-policy assignment permissions.
- Extend the system with a custom access rule.
- Support a lighter alternative to Group.
- Keep access policies exportable.
