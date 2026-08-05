<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Digital Analytics Program (usfedgov_google_analytics) — agent index

Adds the **US GSA Digital Analytics Program (DAP)** script. Settings behind
`administer federal google analytics`. Version **3.0.0**. Core requirement `^10.3 || ^11`.

**A compliance module, not a choice.** DAP is a government-wide analytics service run by the GSA;
participating agencies embed a standard script, data flows to a shared federal account, and a
subset appears publicly on **analytics.usa.gov**. Participation is **mandated for executive-branch
public-facing sites** under OMB policy. For those agencies the question is not whether to add it
but whether the agency identifier, script version and page exclusions are right.

**Two things worth knowing:**
- **The consent calculus differs from a commercial tracker's** — government-operated, published
  privacy policy, federally set retention. Materially different from a vendor product, though still
  third-party JavaScript on every page and still belongs in the privacy notice.
- **The name is misleading now.** The project name says "google analytics" and the module says
  "Digital Analytics Program" — DAP's history is on Google Analytics but the platform underneath has
  changed. **Check what the current release actually loads** rather than inferring from either name.
