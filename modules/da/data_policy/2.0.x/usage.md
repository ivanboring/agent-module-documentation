<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Data Policy publishes a data policy or privacy statement as a versioned entity, requires users to agree to it, and records who agreed to which version and when.

---

GDPR treats consent as something that must be **demonstrable**: not "the privacy policy was on the site" but "this person agreed to this text on this date". A policy page alone cannot show that, and neither can a checkbox whose state is a boolean with no record of what was agreed to. This module models the whole thing — the policy as a revisioned entity, an enforced agreement step for users who have not accepted the current version, a record per user per revision, and a `data_policy_export` submodule for producing that record on request, which matters because a subject access request asks for exactly this. It comes from the Open Social distribution's ecosystem, which is where the requirement was felt first. Version **2.0.9** on core `^10.2 || ^11`, depending on core `block` and `path_alias`. **A serious defect to know before installing**: `DataPolicyServiceProvider` replaces the `module_installer` service class and adds arguments to it, which produces a **circular reference** — verified on a clean Drupal 11.4.4 install, where `\Drupal::service('module_installer')` throws `ServiceCircularReferenceException` and every `drush pm:*` command disappears. The site itself continues to serve pages, but **no module can be installed or uninstalled while this module is enabled, including this module** — recovery is a direct edit of `core.extension`. That has a security consequence as well as an operational one, since disabling a module is the standard response to an advisory with no fix available.

---

- Publish a versioned privacy policy.
- Record who agreed to which version.
- Require agreement before using a site.
- Demonstrate consent for GDPR.
- Re-prompt users when the policy changes.
- Export a user's consent record.
- Answer a subject access request.
- Track agreement dates per user.
- Enforce a terms-of-use acceptance.
- Publish a data policy as an entity.
- Show a policy summary in a block.
- Support a compliance audit.
- Version a policy over time.
- Require re-consent after an update.
- Record consent for a community site.
- Support a membership organisation's obligations.
- Show an inform block about data use.
- Maintain an auditable consent trail.
