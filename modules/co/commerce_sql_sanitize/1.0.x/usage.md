<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Commerce SQL Sanitize extends Drush's `sql:sanitize` command to scrub Commerce-specific data — orders, customer profiles, payment records — when a production database is copied to a development environment.

---

Copying production to a laptop is how most Drupal development is done, and it is also how customer data ends up on unencrypted machines, in unmonitored environments and in database dumps attached to issue trackers. `drush sql:sanitize` exists for this and covers what core knows about — user email addresses and passwords — which on a Commerce site is a small fraction of the personal data present. Orders carry billing and shipping addresses, telephone numbers, and the customer's name and email again in the order's own fields; customer profiles hold the same; payment records hold partial card details, gateway references and transaction identifiers. A database sanitised only by core is not sanitised. This module fills that gap, version **1.0.0** on core `^9.1 || ^10 || ^11`, with no configuration and no UI — it hooks the Drush command. Three points make it worth more than its size. **Sanitisation must be enforced, not remembered**: the value comes from `sql:sync` being configured to sanitise by default, so that an unsanitised copy takes a deliberate act rather than the reverse. **Verify what it covers on the site's actual data model**, because custom order fields, a customer-notes field or a third-party gateway's stored response are invisible to a generic sanitiser and are exactly where the surprises are. And **sanitisation is not anonymisation**: scrambled data can often be re-identified from order amounts, timestamps and addresses left intact, so a sanitised copy is still a copy that deserves care rather than a public artefact.

---

- Sanitise Commerce data before development.
- Remove customer addresses from a database copy.
- Protect payment records in development.
- Meet a GDPR obligation for copies.
- Sanitise orders and profiles.
- Support a safe sql:sync workflow.
- Remove customer emails from orders.
- Reduce risk on developer machines.
- Support a data-protection policy.
- Sanitise before sharing a dump.
- Protect telephone numbers in test data.
- Reduce exposure in a staging environment.
- Support a security review requirement.
- Remove gateway transaction references.
- Prepare a database for a contractor.
- Sanitise before attaching to an issue.
- Support a compliance audit.
- Protect customer data in CI.
