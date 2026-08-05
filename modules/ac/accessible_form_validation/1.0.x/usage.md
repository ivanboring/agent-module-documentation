<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Accessible Form Validation improves how Drupal reports form errors to assistive technology — associating messages with the fields that caused them and announcing them properly.

---

Form validation is where accessibility most often fails on an otherwise careful site, and the failure is severe: a user who cannot perceive the error cannot complete the form, which means they cannot register, cannot pay and cannot contact anyone. Drupal's default behaviour prints errors in a message region at the top of the page and adds a `.error` class to the offending elements, which is workable for a sighted user scrolling up and much weaker for anyone else. Doing it properly means several specific things, and they are the checklist to hold this or any similar module against. Each field with an error needs **`aria-invalid="true"`** and its message associated by **`aria-describedby`**, so the message is read when focus reaches the field rather than only at the top of the page. The error summary needs to be **announced on appearance** and to contain links that move focus to the fields concerned. **Focus should move** to the summary or the first error on failed submission, since a screen-reader user otherwise has no signal that anything happened. And errors must be conveyed by more than **colour** — the requirement people remember, and the least of them. Version **1.0.4** on core `^10 || ^11`, no dependencies. Worth noting that Drupal core has improved here across recent releases, so verify what the module still adds on the specific core version rather than assuming the gap it was written for is still open.

---

- Associate error messages with their fields.
- Announce validation errors to screen readers.
- Move focus to the first error.
- Meet a WCAG conformance requirement.
- Improve a registration form's accessibility.
- Add aria-invalid to failed fields.
- Link an error summary to its fields.
- Improve a checkout form's error handling.
- Fix an accessibility audit finding.
- Make errors perceivable without colour.
- Improve a long form's error reporting.
- Support keyboard-only form completion.
- Improve a contact form's usability.
- Meet a public-sector accessibility duty.
- Announce errors on submission.
- Improve a webform's validation messages.
- Reduce form abandonment for assistive users.
- Support an accessibility remediation programme.
