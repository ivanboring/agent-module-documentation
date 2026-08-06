<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Media oEmbed Provider Markup (media_oembed_provider_markup) — agent index

Replaces core's proxied `/media/oembed` iframe with the provider's own returned HTML.
Version **1.0.1**. Core `^10 || ^11`. **No PHP classes** — no routes, permissions, or config.

Why sites want it: core's double iframe breaks responsive sizing, blocks provider JS that expects
to run in the host document, and costs a proxied request per embed.

**State the trade every time.** Core proxies deliberately: the iframe isolates third-party markup.
Rendering provider HTML directly runs it in your origin's context, so the security boundary
becomes the **oEmbed provider allow-list** — keep it tight, review additions, and expect a CSP
written for the iframe arrangement to need revisiting.