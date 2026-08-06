<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Gutenberg Bootstrap Blocks (gutenberg_bs_blocks) — agent index

Adds **container / row / column** blocks to the **Gutenberg** editor, emitting Bootstrap markup.
Version **1.0.0-rc3**. Core `^8 || ^9 || ^10 || ^11`. Depends on `gutenberg`.

Fills Gutenberg's layout gap on a Bootstrap site — editors can write a paragraph but not put two
side by side.

**Two deliberate decisions:** raw containers/rows hand **layout** to editors, which drifts from the
design system — a component (a card grid block) constrains more, and offering both gives a site
three ways to make two columns; and **responsive behaviour is Bootstrap's**, so show editors what
their grid does at mobile width, because the editor canvas is a desktop.