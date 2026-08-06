<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Active Tags replaces the comma-separated autocomplete used for free tagging with a widget that shows each tag as a removable chip.

---

Core's free-tagging widget is a single text field holding a comma-separated list, which is a data format leaking into an interface. It produces the specific problems everyone who has used it recognises: a tag containing a comma has to be quoted and nobody knows that, removing a tag from the middle means editing a string by hand, the existing tags are not individually visible, and there is no signal about which of them are new versus existing until after save — which is how a vocabulary accumulates "Marketing", "marketing" and "Marketing " as three terms. A chip-based widget makes each tag an object: added, seen, removed. Version **1.0.1** on core `^9.5 || ^10 || ^11`, depending on core `field` and `taxonomy`. Two things determine whether the widget is an improvement rather than a rebuild. **Keyboard behaviour has to match what a chip interface implies** — type and Enter to add, Backspace at the start to remove the previous chip, arrow keys between chips, and each chip's remove control focusable — because a chip widget that only responds to clicks is worse than the text field it replaced, which at least worked with a keyboard. And **free tagging is a governance decision more than a widget one**: any interface that lets editors create terms produces a vocabulary that grows without curation, so the durable fix for a messy vocabulary is a review process or a restricted set, and a better widget makes the growth tidier rather than slower.

---

- Show tags as removable chips.
- Improve a free-tagging field.
- Remove a tag without editing a string.
- Handle a tag containing a comma.
- See existing tags individually.
- Improve an article's tagging interface.
- Reduce duplicate taxonomy terms.
- Improve mobile tag entry.
- Show which tags are new.
- Improve a blog's tagging.
- Make tag removal obvious.
- Support a large tag vocabulary.
- Improve editorial tagging accuracy.
- Replace a comma-separated field.
- Support keyword entry on a form.
- Improve a media tagging widget.
- Tag content more quickly.
- Reduce tagging errors.
