<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
DaData Integration integrates the DaData API for form autocomplete (country, city, address).

---

DaData Integration **integrates the DaData API for autocomplete** — providing form field autocomplete/
suggestions for country, city and address values via DaData's suggestion API. It depends on core System.

Use it to add DaData-powered address autocomplete. It is an integration/forms feature. Security/data handling: as
users type, field values are **sent to the external DaData API** (egress — including partial addresses/PII) and it
authenticates with a **DaData API key** (store as a secret — env/Key — over HTTPS). Disclose the third-party
lookups per your privacy policy. It has no access-control role. Configure the DaData API key.

---

- Add DaData autocomplete.
- Suggest country/city/address.
- Complete form fields.
- Depend on core System.
- Serve forms/integration.
- Use the DaData API.
- Send typed values to DaData (egress; partial addresses/PII).
- Store the DaData API key as a secret (env/Key, HTTPS).
- Disclose the lookups per privacy policy.
- Have no access-control role.
- Configure the DaData API key.
- Handle DaData autocomplete.
- Suggest addresses.
- Configure the client.
- Autocomplete fields.
- Handle the integration.
- Complete addresses.
- Query DaData.
- Secure the key.
- Provide DaData autocomplete.
