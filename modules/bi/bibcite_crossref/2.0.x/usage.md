<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Bibcite Crossref provides DOI lookup functionality.

---

Bibcite Crossref provides **DOI lookup via Crossref** for the Bibliography & Citation (Bibcite) module —
fetching reference metadata from Crossref by DOI so a citation can be auto-populated. It depends on Bibcite and
Bibcite Entity, in the Bibliography & Citation package.

Use it to import citations by DOI. It is a bibliography/integration feature. Data-handling note: it makes
outbound requests to the **Crossref API** (external egress; the DOI/query is sent to Crossref) and imports the
returned metadata into citation entities — no credentials are typically required, but treat Crossref as an
external dependency (HTTPS). It has no access-control role. Use the DOI lookup when creating references.

---

- Look up DOIs via Crossref.
- Fetch reference metadata.
- Auto-populate citations.
- Depend on Bibcite/Bibcite Entity.
- Call the Crossref API (egress).
- Serve bibliography.
- Send the DOI/query to Crossref.
- Import returned metadata.
- Use HTTPS to Crossref.
- Have no access-control role.
- Use DOI lookup for references.
- Handle DOI lookup.
- Import citations.
- Configure the lookup.
- Fetch metadata.
- Handle the integration.
- Look up references.
- Import DOIs.
- Treat Crossref as external.
- Provide DOI lookup.
