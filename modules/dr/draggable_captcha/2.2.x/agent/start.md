<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Draggable CAPTCHA (draggable_captcha) — agent index

Drag-and-drop challenge type for the **CAPTCHA** module. Requires `captcha` and
**`jquery_ui_droppable`**. Configured through CAPTCHA's settings.
Version **2.2.0-beta4** — **beta**. Core requirement `^10 || ^11`.

**Say the accessibility problem plainly — it is the deciding factor.** A drag interaction is the
**least accessible input pattern the web has**: it needs a pointing device, fine motor control and
sustained coordination. A challenge that must be dragged excludes **keyboard users entirely**,
screen-reader users, anyone with a tremor or limited dexterity, and most people on a phone in one
hand. Since a CAPTCHA stands between a person and something they came to do, an inaccessible one
does not degrade the experience — **it ends it**.

The description says "draggable **& clickable**", so a non-drag path may exist. **Confirm it first**:
reachable by keyboard, announced, and equally effective. That is the difference between a usable
challenge and a barrier.

**Dependency note:** `jquery_ui_droppable` — jQuery UI was **removed from Drupal core** and the
remaining pieces are maintained best-effort. This is built on a library the project has moved away
from.

**Weigh against `turnstile` (wave 79)**, which challenges invisibly and asks nothing of most
visitors — both more accessible and harder to solve at scale.
