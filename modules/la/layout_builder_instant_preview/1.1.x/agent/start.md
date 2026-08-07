<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Layout Builder Instant Preview (layout_builder_instant_preview) — agent index

Live preview for Layout Builder **custom blocks** — updates as the form is filled.
Version **1.1.3**. Core `^10 || ^11`. Depends on `layout_builder`.

Closes the save-and-look loop, which otherwise makes editors accept the first version that is not
obviously broken.

**Two things to check before a busy editorial site:** what **debouncing** is in place (an
unthrottled preview turns editing into a load test), and what the block's **real render path** does
— an API call, an uncached view or an image derivative now happens repeatedly during editing rather
than once on save. Test on the heaviest block first.