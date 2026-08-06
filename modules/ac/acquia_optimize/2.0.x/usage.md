<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Acquia Web Governance connects a Drupal site to Acquia's governance platform, which crawls the site and reports SEO problems, accessibility violations, readability scores and policy breaches — and surfaces those results back inside Drupal.

---

The value of a governance platform over a one-off audit is that it keeps scanning: a site that passed WCAG checks at launch drifts as editors add content, and broken links, thin pages and unlabelled images accumulate where nobody is looking. This module puts the results where the people who can fix them already are — a controller for the dashboard, a quick-scan controller for checking a single page, a preview controller, and a form alter that surfaces findings on the node form itself, so an editor sees the readability score and SEO issues for the page they are editing.

Two permissions separate the roles sensibly: `scan acquia optimize` (`restrict access: true`) for triggering scans, which cost time and vendor quota, and `administer acquia optimize` for the connection settings.

**On the credential.** The API key is stored in `acquia_optimize.settings` as configuration. The form masks it on display and preserves the stored value when the masked form is resubmitted, which is careful — but a masked field is a UI measure, and the key itself still lives in config and therefore in any config export, repository or database dump that follows. The module does not offer a Key entity. If the site has the Key module, prefer putting the value in an environment variable and referencing it from `settings.php` with a config override, so the exported configuration carries nothing secret.

---

- Scan a site for SEO problems continuously.
- Find accessibility violations across all pages.
- Score content readability.
- Check a single page on demand.
- Show SEO issues to editors on the node form.
- Track content quality as a site grows.
- Find broken links and thin content.
- Enforce editorial policies across a large site.
- Give an editor feedback before publishing.
- Report governance status to stakeholders.
- Separate who may scan from who may configure.
- Limit scans to control vendor quota.
- Preview how a page scores.
- Connect an existing Acquia Web Governance account.
- Keep the API key out of exported configuration.
- Audit an inherited site's governance findings.