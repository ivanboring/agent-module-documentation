<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
DaData API provides integration with the DaData API for data suggestions and enrichment (addresses, companies, banks, etc.).

---

DaData API integrates the DaData service — a data-suggestion and enrichment API (widely used for
Russian addresses, companies, banks and other reference data) — into Drupal. It provides the connection
and suggestion/enrichment functionality so forms can autocomplete and validate against DaData. It is
configured at `dadata.settings` and provides its own permissions.

Use it where DaData's suggestion/enrichment is needed (address autocomplete, company lookup). The
security-relevant point is credentials and data flow: store the DaData API token as a secret, and note
that the values users type (addresses, company names) are sent to DaData for suggestions — a data-handling/
privacy consideration. It is an integration feature; configure the token and which lookups are enabled.

---

- Integrate the DaData API.
- Autocomplete addresses via DaData.
- Look up companies/banks.
- Enrich data from DaData.
- Configure at dadata.settings.
- Provide its own permissions.
- Store the DaData token as a secret.
- Send typed values to DaData.
- Mind data-handling/privacy.
- Validate against reference data.
- Suggest addresses/companies.
- Configure enabled lookups.
- Handle credentials securely.
- Depend on the external service.
- Enrich form input.
- Autocomplete reference data.
- Connect to DaData.
- Support Russian address data.
- Provide suggestions.
- Configure the integration.
