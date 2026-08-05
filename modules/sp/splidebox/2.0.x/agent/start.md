<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Splidebox (splidebox) — agent index

Lightbox built on the **Splide** slider. Depends on `splide` and **`blazy`**.
Core requirement `^10 || ^11`.

Key facts:
- **Splide is dependency-free (no jQuery)** — the reason to choose it over Colorbox/Fancybox
  integrations on a site that has moved past jQuery, and it means lightbox navigation is the same
  component a Splide-using theme already loads.
- **The `blazy` dependency is larger than it looks.** Blazy is a substantial media/lazy-loading
  module in its own right; pulling it in for a lightbox alone is a bigger commitment than the
  module's size suggests. Worth stating when recommending it.
- **Test the accessibility basics — they are what separates a good lightbox from a bad one:**
  - focus moves into the dialog and is **trapped** there;
  - **Escape** closes it;
  - focus **returns to the trigger** on close;
  - the dialog has an appropriate **role and accessible name**.
  A lightbox failing these is unusable by keyboard and confusing with a screen reader.
