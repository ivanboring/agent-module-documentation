<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Conzent CMP embeds the Conzent consent-management platform (a GDPR/CCPA/ePrivacy cookie
banner with IAB TCF v2.2 support) into a Drupal site, in either Conzent Cloud or self-hosted
(OCI) mode.

---

A single settings form at `/admin/config/system/conzent` (`conzent.settings`, permission
**"administer site configuration"**) collects the **Website Key** (from the Conzent
dashboard), an optional **Server URL** (blank = Conzent Cloud; set for self-hosted), and
optional **Google Tag Manager** container id and data-layer name. The module then injects the
Conzent CMP script so the banner loads on the front end and, when GTM is configured, wires
consent into the data layer. A dedicated **"administer conzent"** permission
(`restrict access: true`) also exists.

Set it up by pasting your Conzent website key, choosing cloud vs self-hosted, and optionally
adding your GTM id. Use it to satisfy cookie-consent/consent-signalling requirements and to
gate tag firing on user consent via TCF.

---

- Add a GDPR/CCPA-compliant cookie banner to the site.
- Paste a Conzent website key to activate the CMP.
- Use Conzent Cloud without hosting anything.
- Point the CMP at a self-hosted (OCI) server URL.
- Signal consent via IAB TCF v2.2.
- Integrate consent with Google Tag Manager.
- Set the GTM container id (GTM-XXXXXXX).
- Customize the data-layer variable name.
- Gate marketing tags on user consent.
- Show a verified-key status message once configured.
- Link to the Conzent dashboard from the settings page.
- Restrict CMP administration with a dedicated permission.
- Comply with ePrivacy cookie requirements.
- Configure everything from one admin settings form.
- Meet consent-signalling requirements for ad partners.
- Switch a site between cloud and self-hosted CMP.
- Confirm the website key is verified from the settings page.
