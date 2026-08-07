<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# HubSpot API (hubspot_api) — agent index

Client and authentication layer for **HubSpot**, for other modules to build on.
Version **3.0.0**. Core `^10 || ^11`. Deliberately a library, not a feature.

**Get the credential right.** A HubSpot private-app token or OAuth credential grants access to
contact records — names, addresses, interaction history. **Scope the app to the minimum** rather
than accepting defaults, keep the token in an environment variable rather than exported config, and
treat a site holding a broadly-scoped credential as holding a copy of the CRM's access.

**The flow runs both ways:** pushing submissions to HubSpot is personal data leaving the site for a
US-headquartered processor — privacy notice, not integration ticket.