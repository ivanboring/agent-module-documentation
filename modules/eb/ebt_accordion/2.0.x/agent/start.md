<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Extra Block Types (EBT): Accordion (ebt_accordion) — agent index

Accordion **block type** for the **Extra Block Types** family. Depends on `ebt_core ^2.0` and
`paragraphs ^1.0`. Core requirement `^10.1 || ^11 || ^12` (declares Drupal 12).

Key facts:
- **Block types, not paragraph types** — placeable in regions and Layout Builder, unlike the EPT
  family (`ept_text` wave 56, `ept_image` this wave). Shared settings come from `ebt_core`.
- **Accessibility applies to every accordion — state it rather than assume it:**
  - proper **button semantics** and `aria-expanded` state;
  - **keyboard operation**;
  - content in a collapsed panel is **not found by the browser's in-page search**, which matters on
    a policy or FAQ page where visitors expect Ctrl+F to work.
- Compare `lb_tabs` (wave 63): accordion and tab **layouts** for Layout Builder built on jQuery UI.
  This is a block type with its own markup — no jQuery UI dependency.
- Configuration + templates; no routes or permissions.
