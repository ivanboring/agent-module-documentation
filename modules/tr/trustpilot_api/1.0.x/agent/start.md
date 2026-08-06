<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Trustpilot API (trustpilot_api) — agent index

**Trustpilot** client as a Drupal **service**, for modules reading reviews or sending invitations.
Not a feature in itself. Package `Web services`. Version **1.0.1**.
Core requirement `^8.8 || ^9 || ^10 || ^11`.

**The architectural awkwardness:** reviews are the shop's most persuasive content and **not the
shop's data** — they live with the platform, whose independence is why they are trusted. So ratings
on a product page, a review carousel, or an invitation after an order all cross an API.

**Three things worth attaching:**
1. **API credentials are a grant over the review account**, including sending invitations **in its
   name** — environment variable behind a **Key** entity.
2. **Sending an invitation sends a customer's email address to Trustpilot** — a transfer of personal
   data to a processor, which belongs in the **privacy notice and the order flow**. Not covered by
   "we asked them to review us".
3. **Displaying reviews is a caching and availability question.** A page fetching ratings
   **synchronously** has taken on the platform's latency **and its outages** — fetch on a schedule,
   cache, and define what appears when the data is stale or missing.

**One point specific to reviews:** the platform's terms usually govern **how ratings may be
displayed**, including whether a selection can be shown without the overall score. A site showing
only its five-star reviews is making a claim it may not be entitled to make.
