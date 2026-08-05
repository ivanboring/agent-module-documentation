<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Better Social Share (better_social_share) — agent index

Share buttons for a long platform list (its description claims **100+**). Depends on core `node`
and `block`. Configure at `/admin/config/…/better_social_share`;
`administer better_social_share` is `restrict access: TRUE`. Version **1.1.6**.
Core requirement `^9.4 || ^10 || ^11`.

**The only distinction that matters — confirm which this does:**
- **Official platform widgets** — third-party scripts loading on page view, setting cookies and
  reporting the visit **before any click**. Consent-gated under GDPR; a standing privacy-audit
  finding when loaded unconditionally.
- **Plain share links** — anchors to `facebook.com/sharer/sharer.php?u=…`, `wa.me/?text=…` etc.
  No script, no cookie, no third-party contact until a deliberate click, **no consent requirement**.

A module offering 100+ platforms is almost certainly doing the second — a hundred vendor widgets on
one page would be unusable — which makes it the better shape. Contrast `easy_social` (wave 70),
which is the widget kind.

**Two practical points:**
- **A hundred platforms is a menu to pick three from, not a feature.** Every extra button dilutes
  the ones that matter; most sites' useful set is two or three.
- **What gets shared is the Open Graph metadata, not the button.** A bare text preview is a
  **metatag** problem — `og_default_image` (wave 72) is the usual missing piece.
