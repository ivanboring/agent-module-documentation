<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Active Tags (active_tags) — agent index

Chip-based widget for **free tagging** vocabularies, replacing core's comma-separated autocomplete.
Depends on core `field` and `taxonomy`. Version **1.0.1**.
Core requirement `^9.5 || ^10 || ^11`.

**What core's widget gets wrong — a data format leaking into an interface:** a tag containing a
comma must be quoted and **nobody knows that**; removing a middle tag means editing a string by
hand; existing tags are not individually visible; and there is **no signal about which tags are new
versus existing until after save** — which is how a vocabulary accumulates "Marketing",
"marketing" and "Marketing " as three terms.

**Two things determine whether it is an improvement rather than a rebuild:**
1. **Keyboard behaviour must match what a chip interface implies** — type-and-Enter to add,
   **Backspace at the start** to remove the previous chip, arrows between chips, each remove control
   focusable. A click-only chip widget is **worse than the text field it replaced**, which at least
   worked with a keyboard.
2. **Free tagging is a governance decision more than a widget one.** Any interface letting editors
   create terms grows a vocabulary without curation — the durable fix is a **review process or a
   restricted set**. A better widget makes the growth **tidier, not slower**.
