<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Better Social Share adds share buttons for a long list of platforms — Facebook, LinkedIn, WhatsApp, Pinterest, Tumblr and, by its own description, over a hundred others.

---

Share buttons come in two implementations and the difference is the only thing that matters. **Official platform widgets** are third-party scripts that load on page view, set cookies and report the visit to the platform before anyone clicks — under GDPR that makes them a consent-gated technology, and a share row that loads unconditionally is a standing finding in privacy audits. **Plain share links** are ordinary anchors to `https://www.facebook.com/sharer/sharer.php?u=…` or `https://wa.me/?text=…`: no script, no cookie, no third-party contact until the visitor deliberately clicks, and no consent requirement. A module offering "over 100 platforms" is almost certainly doing the second, because a hundred vendor widgets on one page would be unusable — which makes it the better shape, and it is worth confirming rather than assuming. Version **1.1.6** on core `^9.4 || ^10 || ^11`, depending on core `node` and `block`, with `administer better_social_share` marked `restrict access: TRUE`. Two practical points. **A hundred platforms is not a feature**, it is a menu to choose three from — every button added dilutes the ones that matter, and the useful set is whatever the audience actually uses, which for most sites is two or three. And **what gets shared is the Open Graph metadata**, not the button, so a share that produces a bare text preview is a metatag problem — `og_default_image`, documented in wave 72, is the usual missing piece.

---

- Add share buttons to articles.
- Let readers share to WhatsApp.
- Share content on LinkedIn.
- Add sharing without third-party scripts.
- Avoid a consent requirement for sharing.
- Place share buttons as a block.
- Share to a regional platform.
- Add sharing to a news site.
- Increase content reach.
- Support a marketing campaign.
- Add sharing per content type.
- Offer email sharing.
- Add a copy-link option.
- Share to Telegram or Reddit.
- Support an international audience's platforms.
- Add sharing to a product page.
- Configure which platforms appear.
- Improve social referral traffic.
