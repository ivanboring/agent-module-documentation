<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Advertising Entity provides consolidated management for advertising: ad entities, providers (DFP/Google Ad Manager, AdTech, generic), and placement, as a framework for serving ads.

---

Serving ads across a site — different providers, formats, placements, targeting — is a management problem, and Advertising Entity is a framework for it: ads are entities, ad providers are pluggable (submodules for DFP/Google Ad Manager, AdTech v1/v2, a generic provider, a fallback), and placement is configured. It loads third-party ad scripts, which is the privacy/consent consideration: ad tags track users, so ad serving should respect cookie/tracking consent, and the provider scripts are third-party origins. Serving ads is also a decision with performance and content-safety implications (ad networks control what renders). Configure providers deliberately and gate ad scripts behind consent where required.

---

- Manage ads centrally.
- Serve DFP/Google Ad Manager ads.
- Configure ad placements.
- Use pluggable ad providers.
- Serve ads by format.
- Gate ad scripts behind consent.
- Respect tracking consent.
- Configure a fallback ad.
- Target ad placements.
- Load provider scripts.
- Manage ad entities.
- Handle ad providers.
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