<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# DrupalAuth for SimpleSAMLphp (drupalauth4ssp) — agent index

Makes Drupal the login experience for a SimpleSAMLphp **Identity Provider**. Core requirement
`^10 || ^11`. Configure at `/admin/config/people/drupalauth4ssp`
(`configure: drupalauth4ssp.settings`).

**Direction matters — do not confuse this with `simplesamlphp_auth`:**

| Module | Drupal's role |
|---|---|
| `simplesamlphp_auth` | **service provider** — users log in at an external IdP |
| `drupalauth4ssp` | **identity provider front end** — users log in *at Drupal*, SimpleSAMLphp asserts to SPs |

Key facts:
- Composer requires **`drupalauth/simplesamlphp-module-drupalauth ~2.10.0 || ~2.11.0`** — a
  SimpleSAMLphp module, not a Drupal one. It installs into the SimpleSAMLphp tree via the
  `simplesamlphp/composer-xmlprovider-installer` composer plugin, which **must be in
  `config.allow-plugins`** or `composer require` aborts with a PluginManager exception.
  (Allowing `simplesamlphp/composer-module-installer` alone is not enough — a different
  package name.)
- Routes:

  | Route | Path | Requirement |
  |---|---|---|
  | `drupalauth4ssp.settings` | `/admin/config/people/drupalauth4ssp` | `administer drupalauth4ssp configuration` |
  | `drupalauth4ssp.redirect` | `/drupalauth4ssp/redirect` | `_user_is_logged_in: 'TRUE'` |

- The single permission `administer drupalauth4ssp configuration` is flagged
  **`restrict access: true`** — it controls federation trust, so treat granting it as
  equivalent to granting site administration.
- Code surface: `src/SspHandler.php`, `src/EventSubscriber/`, `src/Controller/` (redirect back to
  the originating SP), `src/Form/SettingsForm.php`, plus `drupalauth4ssp.post_update.php`.
- `composer.json` suggests `drupal/tfa`. Worth acting on: an IdP concentrates risk — one
  compromised Drupal login compromises every service provider that trusts it.
- SimpleSAMLphp itself must be installed and configured outside Drupal; this module does not
  manage it.
