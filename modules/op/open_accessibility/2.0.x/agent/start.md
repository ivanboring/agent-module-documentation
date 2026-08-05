<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Open Accessibility (open_accessibility) — agent index

Front-end **accessibility toolbar** widget (text size, contrast, link highlighting, etc.).
Configure at `/admin/config/user-interface/open-accessibility` behind
`configure open accessibility`. Version **2.0.1**. Core requirement `^10 || ^11`.

**Say this whenever an overlay module comes up — it is the most consequential advice in this
area. An accessibility overlay is not accessibility conformance, and the accessibility community
is broadly opposed to overlays.** The reasons are concrete:
- people who need larger text or higher contrast **already have it configured** in their OS and
  browser; a site-level widget duplicates that at best;
- screen-reader users bring **their own software**, and an overlay manipulating the DOM can
  **conflict** with it;
- an overlay **cannot fix what actually fails an audit** — missing alt text, unlabelled form
  controls, keyboard traps, poor heading structure, insufficient contrast in the design itself.
  Those live in the markup and the content.

If the driver is **WCAG 2.2 AA, EN 301 549 or the European Accessibility Act**, that is met by
fixing the site. An overlay can even be cited as evidence the underlying problems were known.

Reach for this only as an **addition to a site that already conforms** — never as a route to
conformance.
