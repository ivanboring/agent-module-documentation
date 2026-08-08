<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Advanced Sanitize provides plugins to extend the drush sql sanitize command.

---

Advanced Sanitize provides plugins that extend Drush's `sql:sanitize` command — so when you export/copy a
production database to a development/staging environment, additional/custom fields can be scrubbed (emails,
names, phone numbers, custom PII) beyond core's defaults. It provides Drush commands and its own permissions,
in the Development package.

Use it to sanitize database copies for non-production use. This is a **security/privacy-positive** practice:
sanitizing a DB dump removes real personal data before it lands in a less-protected dev environment,
reducing the risk of a PII leak from a dev copy. When adopting: ensure your sanitize plugins cover **all**
fields containing PII (an incomplete sanitize still leaks the missed fields) — review coverage. It has no
runtime access-control role. Configure/run the sanitize plugins.

---

- Extend drush sql:sanitize.
- Scrub extra/custom PII fields.
- Sanitize DB copies for dev/staging.
- Provide Drush commands.
- Provide its own permissions.
- Remove real personal data from dumps.
- Reduce PII-leak risk from dev copies.
- Ensure sanitize covers ALL PII fields.
- Review sanitize coverage.
- Have no runtime access-control role.
- Configure the sanitize plugins.
- Handle DB sanitization.
- Scrub production data.
- Configure sanitization.
- Sanitize dumps.
- Protect PII in dev copies.
- Handle the sanitize.
- Extend sanitize.
- Configure PII scrubbing.
- Sanitize the database.
