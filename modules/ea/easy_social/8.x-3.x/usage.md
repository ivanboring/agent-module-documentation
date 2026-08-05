<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Easy Social adds social sharing widgets — Facebook, LinkedIn, Pinterest, X/Twitter and email — as a configurable set placed on content.

---

Share buttons are a standing request and a standing problem. The request is straightforward: give readers a one-click way to post an article. The problem is that the official widgets from each network are **third-party scripts that track visitors on load**, before anyone has clicked anything, which under GDPR makes them a consent-gated technology rather than a decoration — a share button set that loads unconditionally is a common finding in privacy audits. This module provides per-network settings forms, each behind the `administer easy_social` permission (correctly marked `restrict access: TRUE`), and an example submodule; version is **8.x-3.2** on `^9 || ^10 || ^11`. Two practical notes. The **Twitter** naming throughout predates the rebrand to X and the associated widget changes, so verify that integration still behaves. And the privacy-respecting alternative is worth knowing: plain `https://www.facebook.com/sharer/sharer.php?u=…`-style links load no third-party code at all, work without JavaScript, and cost nothing but the share-count display — which is why several sites replace widget sets with link sets outright, or gate the widgets behind the consent manager.

---

- Add share buttons to articles.
- Let readers post to LinkedIn.
- Add a Pinterest save button.
- Share a page by email.
- Configure which networks appear.
- Place sharing widgets per content type.
- Add sharing to a blog.
- Increase article reach.
- Configure widget appearance.
- Add sharing to a news site.
- Gate share widgets behind consent.
- Provide sharing on mobile.
- Support a marketing campaign.
- Add sharing to a product page.
- Show sharing in a specific view mode.
- Control sharing per node.
- Standardise sharing across a site.
- Replace hand-coded share links.
