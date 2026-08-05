<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# AJAX BigPipe (ajax_big_pipe) — agent index

Extends core's **BigPipe** streaming to **AJAX responses**. Depends on core `big_pipe` and `rest`.
Version **1.0.8**. Core requirement `^9 || ^10 || ^11`.

Core BigPipe streams personalised placeholders into ordinary page responses; this applies the same
treatment to AJAX — Views AJAX pagers, dialogs, off-canvas panels, fragment fetches — which matter
increasingly as more of a page loads after the initial request.

**Three things to be clear about with any BigPipe-family module:**
1. **Placeholders are a correctness mechanism, not only a speed one.** A fragment auto-placeholdered
   because it varies per user must actually declare that variance in its **cache contexts**. Wrong
   cache metadata means the fragment is served to the **wrong person** — a disclosure, not a slow
   page.
2. **The gain is conditional on nothing buffering.** A reverse proxy, output filter or compression
   layer that waits for the complete body removes the benefit **silently**.
3. **It changes the shape of an AJAX response.** Test anything downstream that parses AJAX replies
   rather than assuming.
