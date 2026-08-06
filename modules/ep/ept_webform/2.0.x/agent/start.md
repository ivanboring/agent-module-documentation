<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# EPT Webform (ept_webform) — agent index

Paragraph type embedding a **webform** into a page, with the EPT family's shared presentation
settings. Requires `ept_core`, `paragraphs`, `webform`. Version **2.0.1**.
Core requirement `^10.1 || ^11 || ^12`.

**Four established ways to put a form in a page — this is the paragraph-shaped one:**
- **webform reference field** — which form is stored **per node**. Right when the choice is
  editorial and the form belongs to the content.
- **block with a condition** — right when the form belongs to a **section**.
- **extra field** (`webform_extra_field`, wave 78) — attached to **every node of a type** through the
  display. Right when the form is part of what the content type **is**.
- **paragraph (this)** — in the page's **flow**, right when the form is one component among several
  and **its position matters**: hero, text, form, testimonials.

**Two things to plan:**
1. **A form changes the page's caching.** It carries a build id and CSRF token, so the page cannot be
   served from the anonymous page cache the same way — a real change on a high-traffic landing page,
   and worth knowing **before** giving editors a component they can add anywhere.
2. **The submission needs context.** A form on twelve landing pages produces **indistinguishable**
   submissions unless the page is recorded — check the paragraph passes the **host entity** into the
   submission, or the campaign that generated a lead cannot be identified.
