<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# HTTP Client Log (http_client_log) — agent index

Records **outbound HTTP requests** made through Drupal's client as **entities**, with a listing and
detail pages. Routes use **`_entity_access`** rather than a flat permission — the right structure.
Package `Development`. Version **1.2.1**. Core requirement `^8.8 || ^9 || ^10 || ^11`.

**State the privacy and security weight first — this is the most sensitive log a Drupal site can
keep.** Outbound requests carry **Authorization headers, API keys and bearer tokens**; their bodies
carry **whatever is being synchronised**, which for a CRM or payment integration is personal and
financial data; responses carry the same. A complete log is therefore **a credential store and a
copy of the data**, in the database, in every backup, readable by whoever holds the permission.

**Three consequences:**
1. **Redact headers and bodies rather than storing them whole** — or accept that the log needs the
   same protection as the credentials inside it.
2. **Keep it off production**, or enable it **deliberately and briefly** for a specific
   investigation. That is what the `Development` package implies.
3. **Set a retention limit.** No expiry on a busy integration means unbounded growth and, before
   long, the largest table in the database.

**Why it is worth having at all:** the provider's dashboard shows their side, is often unavailable,
and **never shows what the site actually transmitted**.
