<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Simple Klaro integrates the Klaro consent manager into Drupal, giving visitors a cookie/consent dialog that gates third-party scripts until they opt in.

---

Klaro's model is to hold back a tracking script until consent is given: the script tag is neutralised (its `src` moved to `data-src`, its type changed) and only activated once the visitor accepts that service. This module supplies the Drupal side — a settings form at `/admin/config/system/simple-klaro` where services and their purposes are configured, `config/install` and `config/schema` for that configuration, a block plugin in `src/Plugin/Block` for placing the consent controls, and three JavaScript files: `klaro.drupal.js` for the integration, `editor.js` for the admin experience, and `sanitize.js`. That last one is worth calling out, because it is a defensive control rather than a convenience: it walks every `a[data-href]` and, using a `URL` constructor check, forces the attribute to `#` unless the scheme is `http:` or `https:` — so a `javascript:` URL configured into a consent notice cannot execute. The Klaro library itself is installed via `composer.libraries.json` as `kiprotect/klaro` (pinned at v0.7.22), so the asset is local rather than fetched from a CDN. Two permissions exist, both `restrict access: true`: `administer simple klaro`, and **`bypass simple klaro`**, which lets a role use the site without consent gating — useful for editors testing, and a permission to grant deliberately, since a bypassing user's session is not representative of a visitor's.

---

- Show a GDPR consent dialog before loading trackers.
- Hold back Google Analytics until consent is given.
- Let visitors choose which services they accept.
- Group services by purpose in the dialog.
- Give editors a bypass while testing.
- Serve the Klaro library locally rather than from a CDN.
- Document each service's purpose for visitors.
- Re-open the consent dialog from a footer link.
- Meet an EU cookie-consent obligation.
- Block embedded video until consent.
- Record consent decisions client-side.
- Configure consent text per service.
- Prevent javascript: URLs in consent notices.
- Place consent controls as a block.
- Support a privacy policy link in the dialog.
- Gate a marketing pixel behind opt-in.
- Provide granular rather than all-or-nothing consent.
- Keep consent configuration in exportable config.
- Align a site with a data-protection review.
