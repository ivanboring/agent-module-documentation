<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# OG Default Image (og_default_image) — agent index

Site-wide fallback **`og:image`** for **Metatag**. Configure at
`/admin/config/search/metatag/og-default-image`, gated by Metatag's own `administer metatags` —
the right choice, keeping one permission over all metatag configuration. Requires `metatag`.
Version **1.0.1**. Core requirement `^9 || ^10 || ^11`.

**Name collision worth flagging:** in Drupal, `og` usually means **Organic Groups**. Here it means
**Open Graph**.

**Why it matters:** with no `og:image`, LinkedIn/Facebook/Slack/WhatsApp render a bare line of text
instead of a card — and the pages most likely to lack one are exactly the pages most likely to be
shared quickly (a news item, a hurried announcement).

**Two practical points:**
- **Dimensions matter.** Platforms expect roughly **1200×630**, with a minimum below which the card
  renders small or not at all. Size the default deliberately.
- **Social platforms cache aggressively.** A page already scraped without an image keeps its bare
  card until the platform is asked to re-scrape — the fallback fixes **future** shares, not past
  ones.
