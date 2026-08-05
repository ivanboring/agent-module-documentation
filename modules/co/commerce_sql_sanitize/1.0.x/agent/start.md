<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Commerce SQL Sanitize (commerce_sql_sanitize) — agent index

Extends Drush's **`sql:sanitize`** to scrub Commerce data — orders, customer profiles, payment
records. No configuration, no UI; it hooks the Drush command. Version **1.0.0**.
Core requirement `^9.1 || ^10 || ^11`.

**Why core's sanitisation is not enough on a Commerce site.** `sql:sanitize` covers what core knows
about — user emails and passwords. Commerce adds: **billing and shipping addresses**, telephone
numbers, the customer's name and email again in **order fields**, the same in **customer profiles**,
and **partial card details, gateway references and transaction ids** in payment records. A database
sanitised only by core is not sanitised.

**Three points that make it worth more than its size:**
1. **Sanitisation must be enforced, not remembered.** Configure `sql:sync` to sanitise **by
   default**, so an unsanitised copy takes a deliberate act rather than the reverse.
2. **Verify coverage against the site's actual data model.** Custom order fields, a customer-notes
   field, a third-party gateway's stored response — invisible to a generic sanitiser, and exactly
   where the surprises are.
3. **Sanitisation is not anonymisation.** Scrambled data is often re-identifiable from order
   amounts, timestamps and addresses left intact. A sanitised copy still deserves care.
