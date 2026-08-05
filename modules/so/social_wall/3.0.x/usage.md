<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Social Wall aggregates posts from several social networks into one combined feed on the site — the "social wall" pattern used on campaign and event pages.

---

The module models each network as a `social_network_config` configuration entity managed at `/admin/config/services/social-wall` behind `administer social networks`, so credentials and settings per network are configuration and several networks combine into one display. The implementation depends on two PHP libraries — `abraham/twitteroauth ^2` for Twitter/X and `pgrimaud/instagram-user-feed ^6||^7` for Instagram — and that is where the difficulty lies, because both platforms have changed fundamentally since this approach was designed. Twitter's API is now a paid product with no free read tier of the kind a social wall assumes, and Instagram's Basic Display API — the route these libraries used for a user's own recent posts — has been shut down, with the replacements restricted to business and creator accounts through the Graph API. So the code may be sound while the integrations it depends on are not available on the terms the module assumes. Anyone considering it should establish, per network, whether current API access is obtainable and at what cost, before weighing anything else. Where the requirement is a single platform, a narrower module or an official embed is usually the more durable answer.

---

- Show posts from several networks in one feed.
- Build a campaign page's social wall.
- Display an event hashtag stream.
- Aggregate brand social content.
- Configure each network separately.
- Show social proof on a landing page.
- Combine Twitter and Instagram content.
- Manage network credentials as configuration.
- Restrict social configuration by permission.
- Display a conference's social activity.
- Show community content on a homepage.
- Keep social content current automatically.
- Style the wall to match a theme.
- Show a curated hashtag feed.
- Drive traffic to social accounts.
- Provide a social sidebar block.
- Aggregate content for a marketing site.
- Refresh the wall on cron.
