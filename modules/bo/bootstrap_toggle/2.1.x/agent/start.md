<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Bootstrap Toggle (bootstrap_toggle) — agent index

Renders boolean checkboxes as **sliding toggle switches** (Bootstrap Toggle library).
Version **2.1.1**. Core requirement `^10 || ^11`.

**The distinction that decides whether a toggle is right: when the change takes effect.** A switch
**implies immediacy** — users expect it to do the thing now, as it does everywhere else they meet
one. A checkbox in a form implies "saved when I submit". **Using a switch for a value that only
applies on save is a mismatch that makes people think the setting did not stick.**

**Two accessibility points — what separates a working toggle from a decorative one:**
1. **The underlying input must remain a real checkbox** — focusable, operable with the spacebar —
   with the switch as presentation. A `div` styled as a switch is invisible to assistive technology
   unless it carries **`role="switch"` and `aria-checked`** and handles keys itself, and most
   implementations that go that route do only the first part.
2. **State must be conveyed by more than position and colour.** Green-vs-grey with no label conveys
   nothing to a colour-blind user or a screen reader — on/off text, or an accessible name that
   changes with state, is required rather than optional.
