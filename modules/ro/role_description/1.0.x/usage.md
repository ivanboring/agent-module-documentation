<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Role description lets each user role carry an explanatory description, and shows it beside the role checkboxes on the account form — so whoever assigns roles knows what each one actually means.

---

Drupal roles have a machine name and a label and nothing else, which is fine while a site has three roles and painful once it has fifteen. "Content approver", "Editor", "Publisher" and "Reviewer" are indistinguishable from their labels alone, and the person assigning them — often an administrator who did not design the permission scheme — has no way to tell which is which short of comparing permission grids. This module attaches a description to each role and surfaces it where the decision is made: `role_description.module` alters the account form so the text appears with the checkboxes, and a settings form at `/admin/people/role-description` (gated by core's `administer permissions`, the same permission that governs roles themselves) manages the descriptions. Because roles are configuration, so are the descriptions — and `role_description.config_translation.yml` plus the `config_translation` dependency means they are translatable, which matters on a multilingual site where the person assigning roles may not read the site's default language. The release is 1.0.0-rc2 and the core requirement is `^10 || ^11`.

---

- Explain what each role means on the account form.
- Help administrators assign the right role.
- Distinguish similarly named roles.
- Document a permission scheme where it is used.
- Translate role descriptions for a multilingual site.
- Reduce mis-assigned roles.
- Onboard a new administrator to the role model.
- Describe a role's scope in plain language.
- Show role guidance during registration.
- Keep role documentation next to the roles.
- Export descriptions with configuration.
- Clarify the difference between editor and publisher.
- Support a site with many roles.
- Reduce questions about which role to grant.
- Document why a role exists.
- Give a delegated admin the context they need.
- Improve accuracy of user administration.
- Keep role guidance current with the roles.
