<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Umami Analytics (umami_analytics) — agent index

Adds the **Umami** analytics script — privacy-focused, cookieless, self-hostable. No dependencies.
Core requirement `^10 || ^11`. **Release is 2.0.0-beta4 — beta.**

Key facts:
- **The appeal is regulatory:** no cookies and no conventional personal-data collection means, in
  many European readings, analytics that can run **before** the consent banner is answered — so
  the data covers everyone rather than the subset who accepted.
- **Self-hosting is what removes the third-country transfer question.** Using Umami's hosted
  service is a different arrangement with a different answer — establish which is intended.
- **Keep two claims separate.** "Cookieless" is a technical fact about the tool. "No consent
  required" is a **legal conclusion** depending on jurisdiction, configuration and what is
  actually collected — it belongs in a data-protection assessment, not in a module recommendation.
- Not related to Drupal core's **Umami demo profile**, despite the name collision — a common point
  of confusion.
