<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Marketo MA (marketo_ma) — agent index

Adobe **Marketo** integration — Munchkin tracking, lead capture, API sync — across submodules
`marketo_ma_contact`, `marketo_ma_contact_block`, `marketo_ma_legacy_client`, `marketo_ma_user`,
`marketo_ma_webform`. `administer marketo` is `restrict access: true`. Version **3.0.0** (**2023**).
**Core requirement `">=9.2"` — open-ended, no upper bound.** That is a declaration that it will
install on any future core, not evidence it works on one.

**Say the privacy weight plainly — this category is often treated as a marketing decision rather
than a data one:**
1. **Munchkin builds an identified profile**, not aggregate statistics. Once a person is known,
   their **page-by-page browsing is attached to their name** in a system sales staff can read. That
   is a materially different processing activity from counting visits, and needs a lawful basis, a
   privacy-notice entry and a **consent gate**.
2. **Lead capture means personal data leaves the site on submission.** A form that says nothing
   about it is collecting data for an **undisclosed purpose**.
3. **The API credentials are a live grant** over the organisation's marketing database —
   environment variable, **Key** entity, scoped as narrowly as Marketo allows.
