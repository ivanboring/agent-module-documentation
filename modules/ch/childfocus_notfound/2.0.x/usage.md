<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Childfocus provides a block for the 404 page showing a missing-child appeal from notfound.org — the initiative that turns unused "page not found" space into visibility for missing persons cases.

---

notfound.org is a Belgian Child Focus project with a straightforward premise: every website has a 404 page that nobody designs and everybody occasionally sees, and that space can carry a missing-child appeal instead of a dead end. Participating sites embed a widget which shows a case relevant to the visitor's region. This module packages that for Drupal: a block plugin placed on the 404 page, a settings form at `/admin/config/childfocus_notfound` behind `administer site configuration`, and `config/install` and `config/schema` for the settings. Its only dependency is core `block`, and the `core_version_requirement` is **`^11`** — Drupal 11 only, unusually narrow. Two practical notes for a site considering it. The block renders content from a third party, so it introduces an external request into the 404 response and belongs in the same review as any other embedded widget — including consent, if the site's consent policy covers third-party content. And 404 pages are served frequently to crawlers and scanners as well as to people, so whatever is embedded there is requested far more often than a page-view count would suggest.

---

- Show a missing-child appeal on the 404 page.
- Support the notfound.org initiative.
- Use unused 404 space for a public cause.
- Place the appeal as a block.
- Configure the widget from the admin UI.
- Match a Belgian organisation's CSR commitment.
- Show region-relevant cases to visitors.
- Replace a blank not-found page.
- Add social purpose to an error page.
- Configure display without theme changes.
- Join a cross-site awareness campaign.
- Show the appeal alongside site navigation.
- Support Child Focus from a Drupal site.
- Give a 404 page a reason to exist.
- Add the widget without custom code.
- Align a public-sector site with a national initiative.
- Show the appeal only on 404 responses.
- Contribute visibility at no cost.
