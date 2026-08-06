<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Media oEmbed Provider Markup swaps Drupal's `/media/oembed` iframe wrapper for the HTML the oEmbed provider actually returned.

---

Core renders remote media through an intermediary: the media entity's oEmbed URL is proxied by Drupal, and the page gets an iframe pointing at `/media/oembed?url=…`, which in turn contains the provider's embed. The indirection exists for good reasons — it isolates third-party markup and gives core a place to enforce its own rules — but it also produces a double iframe, which is a common cause of sizing and responsiveness trouble, breaks provider JavaScript that expects to be in the host document, and adds a request through Drupal for every embed on the page.

This module removes that layer, rendering the provider's markup directly. The usual reasons to want it are practical: a video that will not go full-bleed because the outer iframe has its own fixed dimensions, a provider whose responsive script never fires, a lazy-loading or player-API feature that only works when the embed is a first-class part of the page, or simply cutting a proxied request per embed.

The trade is the reason core does it the other way. Provider markup rendered into your page runs in your origin's context, so you are trusting the oEmbed providers on your allow-list rather than containing them. Keep the provider list tight and deliberate, review it when someone adds to it, and be aware that a Content Security Policy tuned for the iframe arrangement will probably need revisiting.

---

- Render a YouTube embed without Drupal's iframe wrapper.
- Fix an oEmbed video that will not size responsively.
- Let a provider's responsive script run in the page.
- Remove a double iframe around embedded media.
- Cut a proxied request per embedded item.
- Use a provider's player API from page JavaScript.
- Make an embedded video go full-bleed in a layout.
- Enable provider lazy-loading behaviour.
- Style a provider embed with the site's CSS.
- Improve Core Web Vitals affected by nested iframes.
- Keep media entities while changing only how they render.
- Support a provider whose markup breaks when proxied.
- Review which oEmbed providers a site allows.
- Revisit a CSP written for the proxied iframe arrangement.
- Debug an embed that renders differently when proxied.
- Decide per site whether to trade isolation for control.
