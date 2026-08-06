<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Eloqua API Redux provides the OAuth connection and API client for Oracle Eloqua, so other modules can push and pull marketing data.

---

Eloqua is Oracle's marketing automation platform, and integrations with it are mostly about moving contacts and form submissions in one direction and segmentation back the other. This module is the plumbing rather than the feature: it holds the OAuth credentials, handles the token exchange through a callback route, and exposes a client other modules build on.

Separating the connection from the features that use it is the right shape. A site typically wants several Eloqua-touching behaviours — a webform handler, a user sync, a tracking call — and having each manage its own credentials is how a site ends up with three copies of a client secret.

**The credential is a marketing-platform OAuth client with access to contact data**, which is personal data by any definition. Where it is stored matters: check whether the module holds it in configuration, and if so keep that config object out of exports and consider a Key entity if the module supports one. Both routes are gated by `administer eloqua api settings`, which is correct.

The callback route also carries that admin permission rather than being open, which is the right call for an admin-initiated OAuth flow — the person completing the flow is the person who started it. Worth confirming the `state` parameter is validated on return, since that is what binds the callback to the request that began it.

A submodule, `eloqua_api_auth_fallback`, ships alongside for alternative authentication.

---

- Connect Drupal to Oracle Eloqua.
- Complete an OAuth flow with Eloqua.
- Share one API client across modules.
- Push form submissions to Eloqua.
- Sync contacts to a marketing platform.
- Pull segmentation data back into Drupal.
- Avoid duplicating a client secret.
- Keep Eloqua credentials out of config exports.
- Restrict who may configure the connection.
- Confirm the OAuth state parameter is validated.
- Use the auth fallback submodule.
- Treat contact data as personal data.
- Refresh an expired access token.
- Audit which modules use the Eloqua client.
- Plan a marketing automation integration.
