<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Features Permissions turns role permissions into separate exportable configuration entities, so a Feature can carry the permissions it needs without carrying whole roles.

---

Permissions are stored on the role, which makes them awkward to package. A Feature bundling a piece of functionality — a content type, its fields, its views — also needs the permissions that make it usable, and the only way to export those is to export the **entire role**, which then overwrites every other permission that role holds on the target site. So installing a Feature can silently strip permissions that other Features granted, and two Features that both touch the editor role cannot coexist. Splitting each permission into its own config entity makes them composable: a Feature carries the permissions it is responsible for and leaves the rest alone. Version **1.2.0** on core `^10.0 || ^11.0`, requiring `features`, in the Development package. **This is security-relevant configuration and deserves review discipline to match**: a permission grant arriving through a Feature is a privilege change that looks like a routine deployment, so the diff for one of these entities should be read with the attention a role change gets, and the same care applied to who may commit them. Two further notes. **`features` itself is a Drupal 7-era workflow** that core's configuration management largely replaced, so this is most relevant to sites already committed to it rather than to new builds. And **an export is a snapshot of an intention**: a permission entity that grants something the target site's role should not have will grant it on import, and configuration import does not ask.

---

- Export permissions with a Feature.
- Avoid overwriting a whole role.
- Package a content type with its permissions.
- Let two Features share a role.
- Deploy permissions independently.
- Compose permissions from several Features.
- Avoid stripping unrelated permissions.
- Support a Features-based workflow.
- Export a module's required permissions.
- Deploy a role change safely.
- Package permissions for reuse.
- Support a distribution's permissions.
- Move permissions between environments.
- Audit permissions in configuration.
- Split role configuration into parts.
- Support an incremental deployment.
- Keep permission changes reviewable.
- Deploy a feature with its access rules.
