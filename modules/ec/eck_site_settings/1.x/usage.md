<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
ECK Site Settings provides an editor UI and developer API for managing site-wide settings as entities, with a domain submodule for per-domain settings.

---

Site-wide settings that editors should manage — a contact number, social links, a banner — do not fit neatly into content or configuration. ECK Site Settings models them as entities (via the Entity Construction Kit approach), with an editor UI and a developer API, plus an `eck_site_settings_domain` submodule for per-domain values on Domain sites. It is a content-modelling tool. Because these settings often appear site-wide (in headers, footers), confirm who can edit them — a site-setting is a lever that affects every page, so editing should be restricted to trusted roles, and any setting that outputs markup is subject to the usual text-format/escaping considerations.

---

- Manage site-wide settings as entities.
- Give editors a settings UI.
- Store global values.
- Manage a contact number centrally.
- Provide a settings API.
- Set per-domain settings.
- Restrict who edits settings.
- Treat settings as site-wide levers.
- Escape setting output.
- Model editable globals.
- Manage footer/header values.
- Configure per domain.
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