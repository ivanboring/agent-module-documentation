<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Twenty CRM Integration — agent index

**Twenty CRM API integration** (companies/contacts + autocomplete). Version **1.0.0**. Core `^9.5||^10||^11`.

**SECURITY (1.0.0):** `/twenty-crm/autocomplete/company` and `/twenty-crm/autocomplete/person/{company_uuid}` are `_access: TRUE` and return live CRM records (names, emails, job titles) with no access check → anonymous CRM/PII enumeration. Gate behind a permission. API key via a Key entity. Depends on `key`/`system`/`tagify`.