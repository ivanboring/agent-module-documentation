<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Bootstrap Multiselect (bootstrap_multiselect) — agent index

Integrates the **Bootstrap Multiselect** library — a multiple-select rendered as a **dropdown of
checkboxes**. Version **2.0.3**. Core requirement `^9 || ^10 || ^11`.

**Why `<select multiple>` is worth replacing — it is the worst-understood control on the web:**
- it needs **ctrl-click or shift-click**, which a large proportion of users do not know;
- it **silently discards previous selections** when someone clicks normally;
- it is nearly unusable on a **touch screen**;
- it shows a few rows regardless of how many options exist.

Checkboxes are self-explanatory — nobody needs telling that ticking two boxes selects two things.
On a Bootstrap-themed site this uses the framework's own dropdown and needs no extra styling.

**Two things decide whether the replacement is an improvement or a regression:**
1. **The underlying element must remain a real `<select multiple>`**, with the widget as
   presentation. That is what keeps **keyboard operation, form submission and assistive technology**
   working — a `div` of checkboxes pretending to be a select must reimplement all three and usually
   reimplements none.
2. **It must announce how many options are selected.** The whole difficulty of a multi-select is
   that the state is not visible: a closed dropdown reading **"3 selected"** tells a screen-reader
   user what a sighted user can see; one reading only "Categories" does not.

**A native control replaced without both is worse than the control it replaced.**
