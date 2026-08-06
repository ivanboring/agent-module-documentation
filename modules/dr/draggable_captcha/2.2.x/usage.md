<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Draggable CAPTCHA adds a drag-and-drop challenge type to the CAPTCHA module, where the visitor moves an element to a target.

---

The appeal over a distorted-text CAPTCHA is real: it is faster, it does not depend on reading mangled characters, and it feels less hostile. The problem is what replaces the reading task. **A drag interaction is the least accessible input pattern the web has**, requiring a pointing device, fine motor control and sustained coordination — so a challenge that must be dragged excludes keyboard users entirely, anyone using a screen reader, anyone with a tremor or limited dexterity, and most people on a phone in one hand. Since the whole point of a CAPTCHA is to stand between a person and something they came to do, an inaccessible one does not degrade the experience; it ends it. The module's description says "draggable **& clickable**", which suggests a non-drag path exists, and confirming that path — that it is reachable by keyboard, announced, and equally effective — is the first thing to check, because it is the difference between a usable challenge and a barrier. Version **2.2.0-beta4** — a **beta** — on core `^10 || ^11`, requiring `captcha` and **`jquery_ui_droppable`**, which is worth noting: jQuery UI was removed from Drupal core and its remaining pieces are maintained on a best-effort basis, so this is built on a library the project has moved away from. Worth weighing against `turnstile`, documented in wave 79, which challenges invisibly and asks nothing of most visitors — an approach that is both more accessible and harder to solve at scale.

---

- Add a drag-based CAPTCHA to a form.
- Replace a text-distortion CAPTCHA.
- Reduce spam on a contact form.
- Add a friendlier challenge.
- Protect a registration form.
- Add a visual CAPTCHA option.
- Reduce automated submissions.
- Protect a comment form.
- Offer an alternative to reading characters.
- Add spam control to a webform.
- Protect a newsletter signup.
- Reduce bot registrations.
- Add a click-based challenge.
- Protect a password reset form.
- Reduce moderation workload.
- Add a challenge to a booking form.
- Protect a search form from abuse.
- Offer a non-text CAPTCHA.
