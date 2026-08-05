<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Accessible Form Validation (accessible_form_validation) — agent index

Improves how Drupal reports form errors to assistive technology. No dependencies.
Version **1.0.4**. Core requirement `^10 || ^11`.

**Why this is the highest-stakes accessibility area:** a user who cannot perceive a validation error
cannot complete the form — cannot register, cannot pay, cannot make contact. Drupal's default is a
message region at the top plus an `.error` class: workable for a sighted user scrolling up, much
weaker otherwise.

**The checklist to hold this — or any similar module — against:**
1. each failing field gets **`aria-invalid="true"`** and its message associated by
   **`aria-describedby`**, so it is read when focus reaches the field, not only at the top of the
   page;
2. the error summary is **announced on appearance** and contains **links that move focus** to the
   fields concerned;
3. **focus moves** to the summary or first error on failed submission — otherwise a screen-reader
   user has no signal anything happened;
4. errors are conveyed by more than **colour** — the requirement people remember, and the least of
   them.

**Verify what it still adds on the specific core version.** Core has improved in this area across
recent releases; the gap the module was written for may be narrower now.
