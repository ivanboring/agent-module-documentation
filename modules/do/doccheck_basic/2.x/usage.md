<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
DocCheck Basic provides a DocCheck login page and block, integrating the DocCheck authentication service used to verify medical professionals.

---

DocCheck is an authentication service that verifies a visitor is a registered medical professional — used by pharmaceutical and medical sites that must restrict content to healthcare professionals (a regulatory requirement in many markets). DocCheck Basic provides the DocCheck login page and block. It is an external-authentication integration. The security considerations are those of any external-auth gate: the DocCheck credentials/keys are secrets to protect, the login flow must correctly establish that DocCheck verified the user before granting access, and the access it grants (to HCP-only content) is a compliance control, so confirm the gated content is actually protected by access, not just hidden. Adopt where medical-professional verification is required.

---

- Verify medical professionals.
- Gate content to HCPs.
- Add a DocCheck login.
- Restrict pharma content.
- Integrate DocCheck auth.
- Protect the DocCheck credentials.
- Confirm HCP content is access-controlled.
- Meet HCP-verification requirements.
- Add a DocCheck block.
- Comply with medical-content rules.
- Gate healthcare content.
- Verify professional status.
- Enable when needed.
- Keep disabled otherwise.
- Restrict administration.
- Confirm on your site.
- Test before production.
- Review configuration.
- Pair with related modules.
- Verify theme fit.
- Match your use case.
- Confirm compatibility.