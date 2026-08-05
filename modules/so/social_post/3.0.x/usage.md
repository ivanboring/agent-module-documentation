<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Social Post is the autoposting half of the Social API family: it stores each user's connection to a social network and pushes site content out to those networks automatically, with the actual network implementations shipped as separate provider modules.

---

Social API splits into three siblings — Social Auth (log in with), Social Widgets (embed) and Social Post (publish out). This module owns the last of those. It defines a `social_post` content entity holding the association between a Drupal user and a social account: `user_id`, `plugin_id`, `provider_user_id`, `name`, a `link`, an `additional_data` blob and — importantly — a **`token`** field holding the provider's OAuth access token used to post on the user's behalf. Around that sit a `PostManager` namespace, a `DataHandler`, a plugin manager for network implementations, and an admin page at `/admin/config/social-api/social-post` listing the installed integrations. Providers such as Twitter or Facebook are separate projects that plug in here, so this module on its own does nothing visible until at least one is installed. Three permissions are declared — viewing the user-entity lists, deleting all users' accounts, and deleting one's own. Requirements are PHP 8.1+, Social API `^4` and core `link`. Because the entity stores live access tokens, database access and backups need to be treated accordingly, and access to the delete and list screens deserves a careful look — see this module's local security notes.

---

- Post new content automatically to a social network.
- Let users connect their own social account for autoposting.
- Share a token across several posting integrations.
- Publish announcements without a manual copy-paste step.
- Manage which networks a site autoposts to.
- Let a user disconnect their own social account.
- Give administrators a list of connected accounts.
- Add a new network by writing a provider module.
- Reuse Social API's shared OAuth plumbing.
- Push editorial content to a brand account.
- Keep posting credentials per user rather than site-wide.
- Audit which users have connected which networks.
- Revoke a connection when a user leaves.
- Combine autoposting with Social Auth login.
- Schedule outbound posts from Drupal content.
- Report on which content was autoposted.
- Support several accounts on the same network.
- Store provider metadata alongside the connection.
- Build a bespoke integration on the plugin API.
