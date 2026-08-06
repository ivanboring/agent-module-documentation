<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Trustpilot API provides a Trustpilot client as a Drupal service, for modules that need to read reviews or send invitations.

---

Review platforms sit in an awkward place in a site's architecture. The reviews are the shop's most persuasive content and they are not the shop's data — they live with the platform, whose independence is the reason they are trusted in the first place. So a site wanting star ratings on a product page, a review carousel on a homepage or an automated invitation after an order has to fetch or push across an API rather than owning any of it. This supplies the client half, as a service other modules consume rather than a feature in itself, version **1.0.1** on `^8.8` through `^11`. Three things worth attaching. **API credentials are a grant over the organisation's review account**, including the ability to send invitations in its name, so they belong in an environment variable behind a Key entity. **Sending an invitation means sending a customer's email address to Trustpilot**, which is a transfer of personal data to a processor and needs to appear in the privacy notice and the order flow — it is not covered by "we asked them to review us". And **displaying reviews is a caching and availability question**: a product page that fetches ratings synchronously has taken on the platform's latency and its outages, so ratings should be fetched on a schedule and cached, with a defined appearance when the data is stale or missing. One further point specific to reviews: **the platform's terms usually govern how ratings may be displayed**, including whether a selection can be shown without the overall score, and a site showing only its five-star reviews is making a claim it may not be entitled to make.

---

- Show Trustpilot ratings on a product page.
- Display reviews on a homepage.
- Send a review invitation after an order.
- Fetch a business's overall score.
- Show recent reviews in a block.
- Automate review invitations.
- Display star ratings in a listing.
- Provide a Trustpilot client to a module.
- Cache review data for display.
- Show review counts on a category page.
- Support a shop's social proof.
- Fetch reviews for a service page.
- Send invitations from an order workflow.
- Display a rating summary.
- Support a review widget integration.
- Fetch reviews on a schedule.
- Show reviews in search results markup.
- Integrate reviews with a commerce site.
