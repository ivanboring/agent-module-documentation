<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Advanced Mautic Integration provides advanced integration with Mautic software.

---

Advanced Mautic Integration connects Drupal with **Mautic** (open-source marketing automation) — adding
Mautic tracking and data integration (e.g. injecting the Mautic tracking script and passing contact/token
data) so site activity feeds Mautic campaigns. It depends on Token, provides its own permissions, in the
Statistics package.

Use it to wire a site into Mautic. It is a marketing/integration feature. Privacy/security notes: it enables
**visitor tracking** (a GDPR/consent consideration — combine with your consent tooling) and, where it talks to
the Mautic API, handle any **API credentials** as secrets (env/Key module, not committed config) and use the
**HTTPS** Mautic endpoint. It has no access-control role beyond its permission. Configure the Mautic endpoint,
credentials and tracking.

---

- Integrate Drupal with Mautic.
- Add Mautic tracking.
- Feed site activity to campaigns.
- Inject the Mautic tracking script.
- Depend on Token.
- Provide its own permissions.
- Enable visitor tracking (consent consideration).
- Handle Mautic API credentials as secrets.
- Use the HTTPS Mautic endpoint.
- Have no access-control role beyond permission.
- Configure the endpoint/credentials.
- Handle Mautic integration.
- Track visitors.
- Configure Mautic.
- Pass contact data.
- Handle marketing automation.
- Configure tracking.
- Connect to Mautic.
- Handle the integration.
- Provide Mautic tracking.
