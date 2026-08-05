<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Instagram Media (instagram_media) — agent index

Renders an Instagram feed in a block. Depends on core `block`.
Core requirement `^9 || ^10 || ^11`. Permission `administer instagram media block`.

**Check platform viability before recommending this or any Instagram feed module.** The issues
are external to the code:
- Instagram's **Basic Display API** — the usual "show my own recent posts" route — has been
  deprecated and shut down. Current paths are the **Graph API** (business/creator accounts only)
  or **oEmbed** (individual posts). Verify which this release targets and whether that endpoint
  still answers.
- **Access tokens expire.** These are long-lived-but-finite credentials needing periodic refresh.
  A feed that works at launch can stop silently weeks later — monitor it rather than assuming.
- The token is a **secret**: on this repo's convention put it in an environment variable
  (`ddev dotenv set`) surfaced through a Key entity, not in exported configuration.

Key facts:
- Surface: `src/Plugin/` (block), `src/Service/` (API client), `src/Hook/`, `templates/`,
  `misc/css` + `misc/images`, `config/schema`.
- The single permission gates **block administration**, not viewing the feed.
- Unlike `video_embed_instagram` (wave 59), which embeds a single post via Video Embed Field,
  this pulls a feed — so it needs API credentials where that one does not.
