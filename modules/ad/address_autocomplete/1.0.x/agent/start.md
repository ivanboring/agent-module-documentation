<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Address Autocomplete (address_autocomplete) — agent index

Adds a **lookup** to the **Address** module's field — type part of an address, pick the full one.
Requires `address` (the right base, since it already handles the per-country format the results must
populate). Configure at `/admin/config/…/address_autocomplete`.
Version **1.0.0-beta6** — **beta**. Core requirement `^10.1 || ^11`.

**Why address entry is worth fixing:** several fields, a format that differs by country, and a person
on a phone who abbreviates, misspells the street, omits the county and formats the postcode
unexpectedly. The data arrives inconsistent, and **a shop discovers it when the delivery fails**.

**Three things to plan:**
1. **The lookup provider is a contract and a cost.** Address data is licensed — paid per lookup or
   free with restrictions — and **a request per keystroke multiplies that**. Debouncing and a
   **minimum character count** are the levers.
2. **What the user types is sent to the provider** — the beginning of a person's **home address**.
   That is a disclosure, and belongs in the privacy notice however routine it feels.
3. **The manual path must remain.** No address database is complete: **new-build streets and unusual
   addresses are missing from all of them**, and a form accepting only a chosen suggestion excludes
   exactly the people whose address is already hardest to deliver to.
