<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Consent Mode writes Google's Consent Mode default state — `ad_storage`, `analytics_storage`, `ad_user_data`, `ad_personalization`, `functionality_storage`, `personalization_storage` — into the page before any Google tag runs.

---

Google Consent Mode expects a `gtag('consent', 'default', {...})` call to execute *before* the analytics or ads tag, declaring what the site assumes about consent until the user decides. Getting that call onto the page early, and keeping its values in configuration rather than in a theme template, is exactly what this module does. Every one of the six signals is a checkbox on a single settings form, and every one defaults to denied — the correct default for the EEA and the safe default everywhere.

It is deliberately small: one form, one config object, one script. There is no banner and no consent capture here. This module states the *default* denial; something else — a CMP such as Usercentrics, or your own banner — has to send the `consent update` call when the visitor chooses. Pairing the two is the normal shape, and a site that installs only this one will correctly deny by default and then never grant, which is compliant but will show as near-zero analytics.

The settings route is gated by `access consent mode config`, a permission the module defines without `restrict access`, so it can be delegated to a marketing role without handing over `administer site configuration`.

---

- Declare Google Consent Mode defaults before any tag fires.
- Deny ad storage until the visitor consents.
- Deny analytics storage by default.
- Deny ad personalization and ad user data by default.
- Control functionality and personalization storage signals.
- Keep consent defaults in exported configuration.
- Move a hard-coded `gtag('consent','default')` out of a theme template.
- Meet Google's Consent Mode v2 requirement for EEA traffic.
- Pair a consent banner with the correct default state.
- Delegate consent defaults to a marketing role.
- Turn the whole script off with one setting.
- Set permissive defaults for a non-EEA-only property.
- Audit what a site currently declares to Google.
- Diagnose analytics reporting near zero after a consent rollout.
- Stage consent defaults through configuration deployment.