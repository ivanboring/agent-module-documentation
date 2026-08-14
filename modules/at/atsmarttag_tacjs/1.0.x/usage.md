<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
AT Internet SmartTag for TacJS registers the AT Internet (Piano) SmartTag analytics service as a consent-managed tag inside the TacJS tag-and-consent manager.
---
The module is glue between the `atsmarttag` and `tacjs` modules. `hook_tacjs_content_alter()` declares an `atinternet_smarttag` entry in the TacJS `analytic` group so the SmartTag appears in the consent manager's list of services, and `hook_page_attachments()` attaches the `atsmarttag_tacjs` JS library on non-admin pages. This lets AT Internet tracking load only after the visitor grants consent through TacJS, supporting GDPR-style consent gating.

It has no routes, permissions or configuration of its own; the SmartTag site/tracking settings come from the `atsmarttag` module and consent behaviour from `tacjs`. There are no secrets or server-side external calls in this module — it only wires client-side tag loading through the consent layer.
---
- Register AT Internet SmartTag as a consent-managed service.
- Gate AT Internet tracking behind TacJS consent.
- Show the SmartTag in the TacJS consent banner's analytics group.
- Attach the SmartTag JS only on non-admin pages.
- Support GDPR-style opt-in for AT Internet analytics.
- Combine AT Internet with other TacJS-managed tags.
- Load tracking only after the visitor accepts analytics.
- Keep the admin UI free of tracking scripts.
- Reuse existing atsmarttag configuration.
- Integrate Piano Analytics (AT Internet) with consent.
- Present the SmartTag service label in the consent list.
- Comply with cookie-consent requirements for analytics.
- Avoid firing analytics before consent is given.
- Bridge the atsmarttag and tacjs modules.
- Manage AT Internet as one entry in a central tag manager.