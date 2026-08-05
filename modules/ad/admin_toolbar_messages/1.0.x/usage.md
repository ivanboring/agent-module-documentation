<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Admin Toolbar Messages moves Drupal's status messages into the administrative toolbar, instead of leaving them as a block at the top of the page content.

---

Status messages are Drupal's main feedback channel and their default placement undermines them. They render into a region of the page, which means they push the content down, appear in a different place on every theme, and are frequently below the fold on a long form — so an editor who saves at the bottom of a page sees no confirmation at all and scrolls back up to look for one. On a site with a custom admin theme they sometimes disappear entirely, because the theme forgot to print the region. Putting them in the toolbar gives a fixed, always-visible location that does not move the page, which is what a notification area should be. Version **1.0.4** on core `^10.3 || ^11`, with test dependencies on both `toolbar` and the newer **`navigation`** module — the latter being what core is moving toward, so the module is prepared for both administrative shells. Two things worth checking rather than assuming, because they are how a notification pattern goes wrong. **Screen-reader announcement**: Drupal's message region carries `aria-live` so a new message is announced without moving focus, and relocating messages must preserve that or the feedback becomes visual-only. And **error messages must not be dismissible into invisibility** — an error that scrolled past is bad, but an error collapsed into an unread toolbar badge is worse, so validation errors in particular should still be findable next to the field that caused them.

---

- Keep status messages always visible.
- Stop messages pushing content down.
- Show a save confirmation on a long form.
- Give messages a consistent location.
- Fix messages missing from a custom theme.
- Improve editorial feedback.
- Show warnings in the toolbar.
- Reduce missed confirmations.
- Improve a long form's usability.
- Show messages above the fold.
- Support the new navigation module.
- Standardise message placement.
- Reduce scrolling to find feedback.
- Improve an admin theme's messaging.
- Show queued status messages.
- Keep the page layout stable on save.
- Improve editor confidence after saving.
- Surface warnings an editor missed.
