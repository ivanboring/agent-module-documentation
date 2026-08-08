<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Documentation generator allows administrators to generate documentation describing site features and configuration.

---

Documentation generator lets administrators generate documentation that describes the site's features
and configuration — producing a reference of how the site is set up (content types, fields, modules,
etc.), useful for onboarding, handover or maintenance records. It provides its own permissions.

Use it to auto-generate site documentation. The security-relevant point is that the generated documentation
describes the site's structure/configuration — which is sensitive operational detail (it reveals content
types, fields, enabled modules, and potentially configuration that aids an attacker) — so restrict the
generation/viewing to trusted administrators and don't expose the generated docs publicly. It is a
developer/administration tool that reads configuration to produce docs; it has no content-access role beyond
its permission. Generate and store the docs securely.

---

- Generate site documentation.
- Describe features and configuration.
- Document content types/fields/modules.
- Support onboarding/handover.
- Provide its own permissions.
- Restrict generation to trusted admins.
- Not expose generated docs publicly.
- Know docs reveal site structure.
- Store the docs securely.
- Read configuration to produce docs.
- Have no content-access role.
- Auto-generate documentation.
- Produce a site reference.
- Document the setup.
- Restrict doc viewing.
- Generate maintenance records.
- Describe the site.
- Configure generation.
- Protect operational detail.
- Generate config docs.
