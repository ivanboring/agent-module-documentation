<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Responsive Slideshow (responsive_slideshow) — agent index

Slideshow built on **Bootstrap's own carousel component**. Depends on core `image`. Settings behind
`administer responsive slideshow`. Version **3.0.0**. Core requirement `^9.4 || ^10 || ^11`.

**The value is entirely in the qualifier — this is for Bootstrap-themed sites.** There the
framework's JS and CSS are already loaded, so driving its carousel adds **no library, no weight and
no styling to override**. A slideshow module that brings its own library adds all three and then
looks imported. On a non-Bootstrap site this is the wrong choice — establish which first. (Same
argument as `uikit_image_formatter`, wave 73.)

**Two things to attach:**
1. **Bootstrap's carousel has accessibility limitations the framework's own documentation
   acknowledges** — auto-advance without an accessible pause control, and slide transitions that
   are not announced. A site with a conformance obligation should disable auto-advance and verify
   keyboard operation rather than assume the framework handled it.
2. **Content past the first slide is largely unseen.** Build one on the merits, not because the
   design template had one. Where several teams each want the top of the homepage, a carousel is
   the compromise that satisfies nobody's metrics.
