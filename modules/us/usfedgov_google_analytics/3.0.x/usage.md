<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Digital Analytics Program adds the US General Services Administration's DAP tracking script, which US federal government websites are required to run.

---

This is a compliance module rather than a choice. The **Digital Analytics Program** is a government-wide analytics service operated by the GSA: participating agencies embed a standard script, the data flows into a shared federal analytics account, and a subset appears publicly on analytics.usa.gov. Participation is mandated for executive branch public-facing sites under OMB policy, so for the agencies concerned the question is not whether to add it but whether it is configured correctly — the agency identifier, the correct script version, and the exclusions for pages that should not report. Version **3.0.0** on core `^10.3 || ^11`, configured behind an `administer federal google analytics` permission. Two things worth knowing outside that context. **The consent calculus is different from a commercial tracker's**: the script is government-operated under a published privacy policy with data-retention rules set by federal policy, which is a materially different arrangement from a vendor's analytics product, though it is still third-party JavaScript loading on every page and still belongs in the privacy notice. And **the name is misleading in 2026** — the project name says "google analytics" and the module says "Digital Analytics Program", reflecting DAP's history on Google Analytics; the platform underneath has changed, so check what the current release actually loads rather than assuming from either name.

---

- Meet a federal analytics mandate.
- Add the DAP script to a government site.
- Configure an agency identifier.
- Report to analytics.usa.gov.
- Comply with OMB analytics policy.
- Add government-wide analytics.
- Exclude pages from federal reporting.
- Support a federal site launch.
- Standardise analytics across an agency.
- Meet a compliance review requirement.
- Replace a hand-added DAP snippet.
- Configure DAP without a theme change.
- Support a .gov site's obligations.
- Add analytics under a published privacy policy.
- Report traffic to a shared account.
- Support an agency's digital strategy.
- Verify DAP installation.
- Manage the DAP script as configuration.
