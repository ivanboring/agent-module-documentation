<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Marketo MA integrates Adobe's Marketo marketing automation platform — the Munchkin tracking script, lead capture from forms and users, and API synchronisation — through a set of submodules.

---

Marketo is enterprise marketing automation: it builds a profile of each known person from every interaction, scores them, and feeds sales. The Drupal side of that has three parts, and this module supplies all three. **Munchkin** is the tracking script that records page visits and associates them with a known lead. **`marketo_ma_webform`** and **`marketo_ma_user`** capture leads from form submissions and from account creation. **`marketo_ma_contact`** and its block surface Marketo data back in Drupal. Version **3.0.0** from **2023**, with a core requirement of **`">=9.2"`** — an open-ended constraint with no upper bound, which is a declaration that the module will install on any future core rather than evidence that it works on one. The privacy weight here is heavier than for ordinary analytics and should be said plainly, because this category is often treated as a marketing decision rather than a data one. **Munchkin builds an identified profile**, not aggregate statistics: once a person is known, their page-by-page browsing is attached to their name in a system sales staff can read, which is a materially different processing activity from counting visits and needs a lawful basis, a privacy-notice entry and a consent gate. **Lead capture means personal data leaves the site on submission**, so a form that says nothing about it is collecting data for an undisclosed purpose. And **the API credentials are a live grant** over the organisation's marketing database — environment variable, Key entity, and scoped as narrowly as Marketo allows.

---

- Track known leads across a site.
- Capture leads from a webform.
- Sync Drupal users to Marketo.
- Add Munchkin tracking to pages.
- Show Marketo contact data in Drupal.
- Support a demand-generation programme.
- Capture a registration as a lead.
- Score leads from site behaviour.
- Feed a sales pipeline from a site.
- Sync form submissions to marketing.
- Support an enterprise marketing stack.
- Track campaign landing pages.
- Capture gated-content downloads.
- Show personalised content by lead data.
- Support an event registration flow.
- Sync newsletter signups.
- Track a lead's content journey.
- Support B2B marketing operations.
