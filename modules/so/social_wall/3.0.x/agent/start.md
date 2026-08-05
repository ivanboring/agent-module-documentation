<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Social Wall (social_wall) — agent index

Aggregates posts from several social networks into one wall. `social_network_config` config
entities at `/admin/config/services/social-wall` (`administer social networks`).
Core requirement `^8 || ^9 || ^10 || ^11`.
Libraries: `abraham/twitteroauth ^2`, `pgrimaud/instagram-user-feed ^6||^7`.

> ## Establish platform viability before anything else
>
> The code may be fine; the integrations it assumes largely are not available on those terms any
> more:
> - **Twitter/X** — the API is now a paid product with no free read tier of the kind a social wall
>   assumes.
> - **Instagram** — the **Basic Display API**, which `pgrimaud/instagram-user-feed` targeted for a
>   user's own recent posts, has been **shut down**. The replacement is the Graph API, restricted
>   to business and creator accounts.
>
> Check, per network, whether access is obtainable and at what cost before evaluating anything
> else. Same caution as `instagram_media` (wave 64) and `video_embed_instagram` (wave 59).

Key facts:
- Each network is a **configuration entity**, so credentials land in config — keep API keys and
  tokens in environment variables per this repo's convention, not in exported YAML.
- Where the requirement is one platform, a narrower module or the platform's official embed is
  more durable than an aggregator depending on two libraries.
- Surface: `src/Entity/`, `src/` services, `social_wall.routing.yml`, `css/social_wall.css`,
  `config/schema`.
