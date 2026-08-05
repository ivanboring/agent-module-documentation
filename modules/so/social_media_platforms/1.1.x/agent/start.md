<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Social Media Platforms (social_media_platforms) — agent index

A configurable **block of the organisation's own social profile links**. Depends on core `block`.
Configure at `/admin/config/services/social-media-platforms`. Version **1.1.0**.
Core requirement `^10.2 || ^11`.

**Do not confuse this with share buttons** — the distinction is entirely a privacy one:
- **this module** — outbound anchors to the organisation's own profiles. Loads nothing
  third-party. **No consent requirement.**
- **share widgets** (e.g. `easy_social`, wave 70) — third-party scripts that track visitors on
  load. **Consent-gated.**

Permission `administer social media platforms` is **not** `restrict access` — defensible, since
its holder can only set outbound URLs, though those URLs appear on every page carrying the block.

**When comparing modules of this type, check the platform list**: fixed to whatever the author
thought of, or extensible? The set of networks that matter changes faster than module releases do.
