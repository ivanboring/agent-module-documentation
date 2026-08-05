<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Copy to Clipboard (cp2clip) — agent index

Adds a copy button to elements carrying a marker class (`cp-to-clip`). No dependencies.
Version **1.0.1-rc2**. Core requirement `^10 || ^11`.

**The class-based implementation is the pragmatic part** — no field type, no formatter, no template
change, and an editor can apply it from a WYSIWYG class control.

**Why it matters more than it sounds:** selecting text accurately is hardest for exactly the values
people most need — an API key wrapping across two lines, a long reference number, a shell command,
an IBAN, a discount code. Selecting a wrapped line picks up a trailing space or misses the last
character, and on a phone it is genuinely difficult.

**Two things to check, both about the button rather than the copying:**
1. **The control must be reachable and the result announced.** A button appearing **on hover** is
   invisible on touch and to keyboard users, and a copy with no feedback leaves the user unsure it
   worked. A **persistent control** and a confirmation **announced** to assistive technology (not
   merely shown) separate a working implementation from a decorative one.
2. **The Clipboard API requires a secure context.** Copy **silently does nothing** over plain HTTP —
   a confusing failure to debug if anyone still runs one.
