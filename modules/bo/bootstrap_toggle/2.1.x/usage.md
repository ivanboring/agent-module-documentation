<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Bootstrap Toggle renders boolean checkboxes as sliding toggle switches, using the Bootstrap Toggle library.

---

The toggle switch has become the expected control for an on/off setting, largely because mobile operating systems made it so, and a plain checkbox now reads as a form field rather than a switch — which matters where the control *is* the setting: a published flag, a feature enabled or disabled, a notification preference. The distinction that decides whether a toggle is right is **when the change takes effect**. A switch implies immediacy: the user expects it to do the thing now, as it does everywhere else they meet one. A checkbox in a form implies "this will be saved when I submit". Using a switch for a value that only applies on save is a mismatch that makes people think a setting did not stick. Version **2.1.1** on core `^10 || ^11`. Two accessibility points, and they are what separates a working toggle from a decorative one. **The underlying input must remain a real checkbox**, focusable and operable with the spacebar, with the visual switch as presentation — a `div` styled as a switch is invisible to assistive technology unless it carries `role="switch"` and `aria-checked` and handles keys itself, and most implementations that go that route only do the first part. And **the state must be conveyed by more than position and colour**: a green-versus-grey switch with no label conveys nothing to a colour-blind user or a screen reader, so on/off text or an accessible name that changes with state is required rather than optional.

---

- Render a published flag as a switch.
- Show a feature toggle in settings.
- Improve a preferences form's clarity.
- Make a boolean field look like a switch.
- Match a Bootstrap theme's controls.
- Improve mobile form usability.
- Show notification preferences as toggles.
- Clarify an on/off setting.
- Improve an admin settings form.
- Render a subscription opt-in.
- Show a visibility flag as a switch.
- Improve a configuration screen.
- Match modern interface expectations.
- Show a boolean in a compact form.
- Improve a dashboard's controls.
- Render a status field as a toggle.
- Support a Bootstrap-themed admin.
- Clarify a two-state choice.
