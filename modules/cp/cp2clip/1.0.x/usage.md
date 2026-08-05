<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Copy to Clipboard adds a copy button to any element carrying a marker class, so a visitor can take a value without selecting it by hand.

---

Selecting text accurately is one of the small persistent frustrations of the web, and it is worst for exactly the values people most need to copy: an API key that wraps across two lines, a long reference number, a shell command, an IBAN, a discount code, a support ticket identifier. Selecting a wrapped line usually picks up a trailing space or misses the last character, and on a phone it is genuinely difficult. A copy button removes the problem entirely, which is why every documentation site and every payment confirmation now has one. This module makes it a **class** — put `cp-to-clip` on a paragraph and it gets a button — which is the pragmatic implementation: it needs no field type, no formatter and no template change, and an editor can apply it from a WYSIWYG's class control. Version **1.0.1-rc2** on core `^10 || ^11`. Two things to check, both about the button rather than the copying. **A copy control must be reachable and announced**: a button that appears on hover is invisible on touch and to keyboard users, and a copy that gives no feedback leaves the user unsure whether it worked — so a persistent control and a confirmation announced to assistive technology, not merely shown, are what separate a working implementation from a decorative one. And **the Clipboard API requires a secure context**, so copy silently does nothing on a site served over plain HTTP, which is a confusing failure to debug if anyone still runs one.

---

- Add a copy button to a code snippet.
- Copy an API key without selecting it.
- Copy a reference number on mobile.
- Add copy to a discount code.
- Copy a shell command from documentation.
- Copy an IBAN from a payment page.
- Add copy to a support ticket id.
- Copy a tracking number.
- Improve documentation usability.
- Copy a licence key.
- Add copy to a generated password.
- Copy a URL from a share panel.
- Improve mobile copying.
- Copy a configuration value.
- Add copy to an order reference.
- Copy a token from a settings page.
- Reduce copy-paste errors.
- Copy a formatted citation.
