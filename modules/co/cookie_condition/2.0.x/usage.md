<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Cookie Condition adds one condition plugin: it matches when a named cookie exists and, optionally, holds a specific value.

---

Drupal's condition plugin system is what block visibility, and a good deal of contrib, is built on — anything that accepts a condition can accept this one. The module is a single class, `Plugin/Condition/Cookie`, with two settings: the cookie name and the value to compare. Put it on a block and the block shows only for visitors carrying that cookie; use it anywhere else conditions are collected and it behaves the same way.

That makes it a neat fit for a small set of jobs: showing a returning-visitor message, hiding a promo from anyone who has dismissed it, exposing a feature to an internal audience marked by a cookie your edge sets, or aligning display with a consent cookie written by a banner.

**Do not use it as an access control.** A cookie is set by the client and can be forged with one line in the browser console, so this decides *what is displayed*, never *what is permitted*. If a block reveals something that must not leak, gate it on a permission or entity access and use the cookie only for presentation. That distinction matters more here than usual, because the plugin sits in the same UI slot as conditions that genuinely do restrict.

The plugin also has caching implications: rendering that varies by cookie needs the corresponding cache context, or the first visitor's result is served to everyone. Check what the surrounding code declares before deploying behind a page cache.

---

- Show a block only to visitors carrying a specific cookie.
- Hide a promotional banner once it has been dismissed.
- Reveal a beta feature to an internal audience marked by a cookie.
- Vary a call to action for returning visitors.
- Match a consent cookie written by a cookie banner.
- Show a region-specific block based on an edge-set cookie.
- Suppress a block for users in an A/B test bucket.
- Display a message to visitors arriving from a specific campaign.
- Reuse the condition anywhere Drupal collects condition plugins.
- Combine with other block visibility conditions.
- Check for a cookie's presence regardless of value.
- Match an exact cookie value.
- Drive layout differences from an existing cookie your CDN sets.
- Avoid writing a custom condition plugin for a one-off case.
- Understand why a cookie-varying block is caching incorrectly.