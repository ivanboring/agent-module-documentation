<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# UIkit Image Formatter (uikit_image_formatter) — agent index

Image field formatter rendering a **UIkit 3** lightbox, slideshow or slider. No module
dependencies — the UIkit assets come from the **theme**. Version **8.x-1.13**.
Core requirement `^10.1 || ^11`.

**The value is entirely in the qualifier: this is for sites whose theme is already UIkit.** There
the framework already ships lightbox, slideshow and slider components, so this adds **no library,
no extra weight**, and produces markup matching the rest of the site by default. On any other site
it is the wrong choice — establish which before recommending it.

**The thing to verify:** the formatter emits markup and attributes that do **nothing at all** if
UIkit's JavaScript is not present. No module dependency enforces that.

Accessibility applies as to every lightbox — focus trapped while open, focus returned to the
trigger on close, Escape to dismiss, dialog role announced — with the advantage that it is
**UIkit's** implementation being judged, so the answer is the same across every site on the
framework. Compare `baguettebox` (wave 72) for a framework-independent alternative.
