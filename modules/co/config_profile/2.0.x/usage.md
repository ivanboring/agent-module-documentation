<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Config Profile updates an install profile's configuration on config export, keeping a distribution or install profile's shipped config in sync with a working site.

---

Distribution and install-profile maintainers face a sync problem: the config that ships with the profile drifts from the config on a working development site. Config Profile updates the install profile's configuration when you export, so the profile's shipped config stays current with the site it was built from. It is a maintainer's tool, most useful when building a distribution or reusable install profile.

---

- Sync profile config on export.
- Keep a distribution's config current.
- Maintain an install profile.
- Update shipped config from a site.
- Build a reusable profile.
- Avoid manual profile config edits.
- Export to the profile.
- Keep profile and site aligned.
- Support distribution maintenance.
- Reduce config drift.
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