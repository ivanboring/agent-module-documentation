<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Video Embed Field Plyr (video_embed_field_plyr) — agent index

Field formatters rendering video through **Plyr.js** instead of the provider's default embed.
Version **2.0.0-rc2** (release candidate). Core `^9 || ^10 || ^11`.
No dependencies declared, no routes, no permissions.

Plugins: `Plugin/Field/FieldFormatter/PlyrEmbed` (Video Embed Field),
`Plugin/Field/FieldFormatter/PlyrOembed` (core oEmbed media),
`Plugin/Field/FieldFormatter/PlyrSharedTrait` — so a site can migrate contrib → core media
without changing player.

Reasons to adopt: one consistent, themeable player across YouTube / Vimeo / self-hosted; keyboard
and screen-reader accessible controls that embedded players do not reliably provide.

**Privacy point to state:** Plyr wraps the provider, it does not replace it. The provider's script
still loads and their cookies are still set. If the site runs a CMP, the Plyr embed needs the same
consent gating as a raw embed.