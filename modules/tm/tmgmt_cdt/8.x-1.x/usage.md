<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Translation Centre (CdT) is a TMGMT translator for the Translation Centre for the Bodies of the EU (cdt.europa.eu).

---

Translation Centre (CdT) provides a TMGMT (Translation Management Tool) translator plugin for the
**Translation Centre for the Bodies of the EU** (CdT, cdt.europa.eu) — so translation jobs managed through
TMGMT can be sent to the CdT translation service. It depends on the TMGMT module, in the Translation
Management package.

**Security caveat — TLS verification is disabled by default on the CdT API.** The module's default
`tmgmt_cdt.curl_options` config is
`{"CURLOPT_TIMEOUT":15,"CURLOPT_RETURNTRANSFER":true,"CURLOPT_SSL_VERIFYHOST":0,"CURLOPT_SSL_VERIFYPEER":0}` —
i.e. **both** peer and host certificate verification are **off** — and these options are used for the CdT API
requests, which carry the module's **API password / access token** (authentication) and the site content
submitted for translation. So out of the box a man-in-the-middle on the path to the CdT API could **capture
the credentials and tamper with returned translations** (content injection). Because it is a **config
default** (not hardcoded), you should **override `tmgmt_cdt.curl_options` to enable TLS verification**
(`CURLOPT_SSL_VERIFYPEER:1`, `CURLOPT_SSL_VERIFYHOST:2`) before using it, and operate over HTTPS. Store the
CdT credentials as secrets. It is a multilingual/integration plugin; TMGMT governs the workflow. See the
local security.md.

---

- Translate TMGMT jobs via the EU CdT.
- Provide a TMGMT translator for CdT.
- Depend on the TMGMT module.
- KNOW TLS verification is disabled by default (curl_options).
- Understand VERIFYHOST:0 + VERIFYPEER:0 ship as defaults.
- Know the API password/token + content travel on those requests.
- Override tmgmt_cdt.curl_options to enable TLS verification.
- Set VERIFYPEER:1 and VERIFYHOST:2.
- Operate over HTTPS.
- Store the CdT credentials as secrets.
- Avoid MITM credential capture / translation tampering.
- Manage translation via TMGMT.
- Configure the CdT connection.
- Translate content.
- Handle credentials securely.
- Fix the TLS default.
- Route jobs to CdT.
- Support multilingual sites.
- Configure the translator.
- Translate via CdT.
