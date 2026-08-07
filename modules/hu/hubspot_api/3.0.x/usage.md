<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
HubSpot API provides the client and authentication layer for HubSpot, for other modules to build on.

---

HubSpot is where a lot of organisations keep contacts, deals and marketing automation, and integrations with it are mostly about moving form submissions in and segmentation back out. This module is deliberately the library rather than a feature: it holds the credentials, handles authentication and exposes a client, leaving the business logic to whatever needs it.

That split is right, because no two organisations want the same thing from HubSpot, and having each integration manage its own credentials is how a site ends up with three copies of an API key.

**The credential is the thing to get right.** A HubSpot private app token or OAuth credential grants access to contact records — names, email addresses, interaction history — which is personal data by any definition, and the scopes granted decide how much. Scope the app to the minimum the integration needs rather than accepting the default set, keep the token in an environment variable rather than exported configuration, and treat a site holding a broadly-scoped HubSpot credential as holding a copy of the CRM's access.

**And the flow usually runs the other way too.** Pushing form submissions into HubSpot means personal data leaving the site for a US-headquartered processor, which on an EU-facing site needs the usual basis and disclosure — that belongs in the privacy notice, not in the integration ticket.

---

- Connect Drupal to HubSpot.
- Push form submissions to a CRM.
- Read segmentation data back.
- Share one HubSpot client across modules.
- Avoid duplicating an API token.
- Scope the HubSpot app to the minimum.
- Keep the token in an environment variable.
- Rotate a HubSpot credential.
- Document contact data leaving the site.
- Cover the transfer in a privacy notice.
- Treat the credential as CRM access.
- Sync a contact on registration.
- Audit which modules use the client.
- Plan a CRM integration.
- Document the module's behaviour for the team.
- Review it during a site audit.
- Verify its assumptions after an upgrade.
