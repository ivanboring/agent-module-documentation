<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Preload Font emits `<link rel="preload">` tags for the site's web fonts, so the browser fetches them at the start of the page load instead of after it has parsed the CSS that references them.

---

Web fonts are discovered late by design. The browser parses HTML, requests CSS, parses CSS, finds a `@font-face` rule, then finds that the rule applies to text on the page, and only then requests the font file — several round trips into the load, at which point the text has already been painted in a fallback. What the visitor sees is a flash of the wrong font and then a reflow as the real one arrives, which is a **layout shift** and therefore a Core Web Vitals penalty as well as an ugly one. A preload hint moves the request to the top of the document, which is the standard fix and normally means a theme change. This module puts it in configuration at `/admin/config/user-interface/preload-font` behind `administer site configuration`, version **3.0.1** on `^10 || ^11`. Three details decide whether the preload actually helps rather than hurting. Fonts must be preloaded with **`crossorigin`** even when same-origin, because font requests are CORS-mode and without it the browser fetches the file **twice**. Preload only the **specific weights and subsets** that appear above the fold, since preloading a nine-weight family front-loads bandwidth ahead of the CSS and images that decide when the page becomes usable. And `font-display: swap` remains a separate and complementary setting: the preload makes the font arrive sooner, `font-display` decides what the visitor sees until it does.

---

- Preload a theme's primary font.
- Reduce a flash of unstyled text.
- Improve Largest Contentful Paint.
- Reduce cumulative layout shift.
- Fix a Core Web Vitals warning.
- Load a heading font earlier.
- Improve perceived page speed.
- Preload an icon font.
- Configure preloads without a theme change.
- Preload a self-hosted font file.
- Improve a Lighthouse score.
- Prioritise above-the-fold typography.
- Reduce font-related reflow.
- Preload a variable font.
- Support a performance audit.
- Improve mobile load experience.
- Preload the fonts a landing page needs.
- Manage font hints in configuration.
