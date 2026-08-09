<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Bibcite Import ORCID imports Bibliography & Citations data from ORCID.

---

Bibcite Import ORCID imports **bibliography and citation records from ORCID** — the researcher-identifier
service — into the Bibcite module, so a researcher's ORCID publication list can populate the site's citations.
It depends on the Bibcite module, provides its own permissions, in the Omibee package.

Use it to pull publications from ORCID into Bibcite. It is an integration feature. Security handling: it calls
the **ORCID API** over the network — if it uses ORCID API credentials/token, store them as **secrets** (env/
Key, HTTPS), and the imported data comes from ORCID (treat as external content). It has no access-control role
beyond its permission. Configure the ORCID import.

---

- Import citations from ORCID.
- Populate Bibcite from ORCID.
- Pull a researcher's publications.
- Depend on the Bibcite module.
- Call the ORCID API.
- Provide its own permissions.
- Store any ORCID credentials as secrets.
- Use HTTPS.
- Treat imported data as external.
- Have no access-control role beyond permission.
- Configure the ORCID import.
- Handle ORCID import.
- Import bibliography.
- Configure the import.
- Pull ORCID data.
- Handle the integration.
- Import publications.
- Fetch citations.
- Configure credentials.
- Provide ORCID import.
