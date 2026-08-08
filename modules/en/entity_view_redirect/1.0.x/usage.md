<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Entity View Redirect redirects an entity's canonical view page to its edit form or another route, for workflows where the 'view' page should not be shown.

---

Some entities exist to be edited, not viewed — a configuration-like content entity, a record managed only through its form. Entity View Redirect sends the canonical view route to the edit form (or another destination) for such entities, so visiting the entity shows the form rather than a rendered page. It is a routing/UX convenience configured by an administrator. The redirect target is admin-configured, not request-derived, so it is not an open-redirect surface; confirm the redirect matches the intended workflow and that users who should see a view page are not caught by it.

---

- Redirect an entity view to its edit form.
- Skip the view page for a record.
- Send view to another route.
- Manage entities only via their form.
- Configure the redirect target.
- Avoid showing a rendered page.
- Route records to editing.
- Set a per-type redirect.
- Confirm the workflow fit.
- Keep the target admin-configured.
- Enable when the feature is needed.
- Keep it disabled otherwise.
- Restrict administration to trusted roles.
- Confirm behaviour on your site.
- Test before production.
- Review configuration.
- Pair with related modules.
- Keep the setup minimal.
- Document why it was added.
- Verify it fits your theme.
- Audit access to it.
- Match it to your use case.