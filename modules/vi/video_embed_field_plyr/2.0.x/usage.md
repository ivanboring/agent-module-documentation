<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Video Embed Field Plyr adds field formatters that render video fields — both Video Embed Field and core oEmbed — through the Plyr.js player instead of the provider's default embed.

---

The default YouTube or Vimeo embed brings the provider's own chrome: their controls, their branding, their suggested-video overlays, and a player you cannot style. Plyr replaces that with a lightweight custom player that wraps the same underlying provider, so the video still streams from YouTube or Vimeo but the controls are yours — themeable with CSS, keyboard accessible, and consistent whichever provider a given video came from.

That consistency is the usual reason to adopt it. A site with some YouTube videos, some Vimeo and some self-hosted MP4s otherwise shows three different player interfaces; Plyr gives one. Accessibility is the other: Plyr's controls are keyboard-navigable and screen-reader labelled to a standard the embedded players do not reliably meet.

Two formatters ship, `PlyrEmbed` for Video Embed Field and `PlyrOembed` for core's oEmbed media, with shared behaviour in `PlyrSharedTrait` — so a site can move from contrib video fields to core media without changing player.

Note the release is **2.0.0-rc2**, a release candidate, and that using a provider-backed player still loads the provider's script and sets their cookies. If the site runs a consent management platform, the Plyr embed needs gating the same as a raw embed would — a custom player wrapper does not change who the visitor's browser talks to.

---

- Replace YouTube's player chrome with a custom one.
- Give Vimeo and YouTube videos one consistent player.
- Style video controls with the site's CSS.
- Improve keyboard accessibility of embedded video.
- Render core oEmbed media through Plyr.
- Render Video Embed Field values through Plyr.
- Remove provider suggested-video overlays.
- Present self-hosted and provider video identically.
- Theme a video player to match a design system.
- Keep the same player when migrating to core media.
- Provide screen-reader-labelled video controls.
- Configure the player per field display.
- Reduce visual branding from video providers.
- Gate the Plyr embed behind cookie consent.
- Evaluate a release candidate before production use.
- Audit which video fields use which player.
