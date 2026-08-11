<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Facets Protection protects facet requests with an additional token.

---

Facets Protection **protects facets with an additional token** — a request subscriber requires a valid `_fp`
token on facet requests and denies those without it, so facet URLs can't be arbitrarily crafted/enumerated (e.g. to
force expensive filtered queries). It depends on the Facets module and provides its own permissions.

Use it to guard facet endpoints. It is a search/performance-protection feature: it token-gates facet requests
(mitigating facet-parameter abuse/DoS-style enumeration). Ensure the token check is robust and the token is
generated for legitimate facet links. It has no broad access-control role beyond its permission. Enable it to
protect facets.

---

- Token-gate facet requests.
- Require a valid _fp token.
- Prevent crafted/enumerated facet URLs.
- Depend on the Facets module.
- Provide its own permissions.
- Serve search protection.
- Mitigate facet-parameter abuse/DoS enumeration.
- Generate the token for legitimate facet links.
- Have no broad access-control role beyond permission.
- Enable it to protect facets.
- Handle facet protection.
- Guard facets.
- Configure the token.
- Protect facets.
- Handle the requests.
- Validate tokens.
- Configure Facets.
- Handle the protection.
- Gate facets.
- Provide facet protection.
