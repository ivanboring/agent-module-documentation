<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Release Version displays the current site/application version in the admin toolbar, reading it from a configured source.

---

Knowing which release is deployed — at a glance, in the toolbar — helps operators confirm a deploy landed and support triage 'which version are you on'. Release Version shows the current version in the admin toolbar. The one thing to be aware of is that a version string is minor reconnaissance if exposed to untrusted users; the toolbar is admin-facing, so keep the display to authenticated staff rather than surfacing the version to anonymous visitors, and avoid putting sensitive build detail in the version string.

---

- Show the deployed version in the toolbar.
- Confirm a deploy landed.
- Help support identify the version.
- Display an app version.
- Read the version from a source.
- Show the release at a glance.
- Keep the version to staff.
- Avoid exposing version to anonymous.
- Aid deploy verification.
- Show build info to admins.
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