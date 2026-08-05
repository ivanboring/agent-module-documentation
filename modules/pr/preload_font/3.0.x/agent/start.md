<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Preload Font (preload_font) — agent index

Emits `<link rel="preload">` for web fonts. Configure at
`/admin/config/user-interface/preload-font` behind `administer site configuration`.
Version **3.0.1**. Core requirement `^10 || ^11`.

**Why fonts need this:** the browser discovers them late — parse HTML → request CSS → parse CSS →
find `@font-face` → find it applies → *then* request the font. Several round trips in, after the
text has painted in a fallback. The result is a flash of the wrong font plus a **layout shift**, so
it is a Core Web Vitals penalty, not just an aesthetic one.

**Three details decide whether the preload helps or hurts:**
1. **`crossorigin` is mandatory, even same-origin.** Font requests are CORS-mode; without it the
   browser fetches the file **twice**. This is the most common way a font preload backfires.
2. **Preload only the specific weights and subsets used above the fold.** Preloading a nine-weight
   family front-loads bandwidth ahead of the CSS and images that decide when the page is usable.
3. **`font-display: swap` is separate and complementary.** Preload makes the font arrive sooner;
   `font-display` decides what the visitor sees until it does.

Value over a theme change: the hints live in configuration rather than in a template.
