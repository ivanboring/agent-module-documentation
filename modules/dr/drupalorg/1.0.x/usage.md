<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Drupal.org bundles the site-specific customizations that power drupal.org, built on JSON:API.

---

Drupal.org is the module of site-specific customizations for the drupal.org website itself — it wires together JSON:API and JSON:API Views to expose project/user/contribution data and adds bespoke behaviors (such as security-release management) tailored to how drupal.org operates. It is published as contrib mainly for transparency/reuse of those customizations.

It defines role- and workflow-specific permissions (e.g. `manage security releases`) reflecting drupal.org's own role model; on a general site these are only meaningful if you replicate that model. Depends on core `block`, `jsonapi`, and `jsonapi_views`; supports Drupal 9, 10, and 11.

---

- Bundle drupal.org customizations.
- Expose data via JSON:API.
- Use JSON:API Views.
- Add bespoke site behaviors.
- Manage security releases.
- Reflect drupal.org's role model.
- Publish customizations as contrib.
- Support transparency/reuse.
- Define role-specific permissions.
- Depend on core `block` and `jsonapi`.
- Depend on `jsonapi_views`.
- Support Drupal 9, 10, and 11.
- Serve project/user/contribution data.
- Underpin contribution_records.
- Tailor to drupal.org operations.
- Provide site-specific logic.
- Gate `manage security releases`.
- Reuse drupal.org patterns.
