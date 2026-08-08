<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Entity Version stores and tracks a version number (major.minor.patch) for content entities, with history and workflow-integration submodules.

---

Editorial and compliance workflows sometimes need an explicit version number on content — v1.2.3 — beyond Drupal's revision history. Entity Version stores and tracks such a version, with `entity_version_history` and `entity_version_workflows` submodules integrating it with content moderation. It is a content-modelling/workflow feature. No unusual security surface; the version is metadata. Confirm the version-increment rules (which transitions bump major/minor/patch) match your policy.

---

- Track a content version number.
- Store major.minor.patch.
- Version content explicitly.
- Integrate versions with workflow.
- Show version history.
- Bump versions on transitions.
- Configure increment rules.
- Add version metadata.
- Support compliance versioning.
- Confirm increment policy.
- Track document versions.
- Version moderated content.
- Enable when needed.
- Keep disabled otherwise.
- Restrict administration.
- Confirm on your site.
- Test before production.
- Review configuration.
- Pair with related modules.
- Verify theme fit.
- Match your use case.
- Confirm compatibility.