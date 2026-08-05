<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Paragraphs Bootstrap Carousel (paragraphs_bootstrap_carousel) — agent index

Carousel **paragraph type** built on Bootstrap's carousel component. Depends on `paragraphs`.
Core requirement `^10 || ^11`.

**Five carousels documented in this campaign — pick by shape, not features:**

| Module | Shape | Library |
|---|---|---|
| `diba_carousel` (w55) | standalone block | Bootstrap |
| `ebt_slideshow` (w60) | block type (EBT) | FlexSlider |
| `varbase_carousels` (w62) | block content | Varbase-native |
| `slider_collection` (w66) | **Views style** | pluggable (Swiper, Tiny Slider) |
| **this** | **paragraph type** | Bootstrap |

Key facts:
- **Bootstrap's JavaScript must be present.** On a non-Bootstrap theme the markup renders and
  nothing rotates — the module does not bundle the library.
- **Accessibility applies to every carousel and is usually the neglected part:**
  - auto-advancing content that moves without user action is a **WCAG failure unless pausable**;
  - controls need accessible names and keyboard operation.
  Verify both rather than assuming the framework provides them.
