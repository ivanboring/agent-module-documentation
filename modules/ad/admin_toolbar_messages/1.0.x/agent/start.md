<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Admin Toolbar Messages (admin_toolbar_messages) — agent index

Moves Drupal status messages into the **administrative toolbar** rather than a page region. Test
dependencies on both core `toolbar` and the newer **`navigation`** module — so it is prepared for
both administrative shells, and `navigation` is where core is heading. Version **1.0.4**.
Core requirement `^10.3 || ^11`.

**Why the default placement undermines them:** messages render into a page region, so they push
content down, land in a different place per theme, and are often **below the fold on a long form** —
an editor who saves at the bottom sees no confirmation. On a custom admin theme that forgot to
print the region, they vanish entirely.

**Two things to check rather than assume — this is how notification patterns go wrong:**
1. **Screen-reader announcement.** Drupal's message region carries **`aria-live`**, so a new
   message is announced without moving focus. Relocating messages must preserve that, or the
   feedback becomes visual-only.
2. **Errors must not be dismissible into invisibility.** An error that scrolled past is bad; an
   error collapsed into an unread toolbar badge is worse. Validation errors in particular should
   still be findable **next to the field that caused them**.
