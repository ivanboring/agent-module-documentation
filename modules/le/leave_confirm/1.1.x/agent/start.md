<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Leave Confirm (leave_confirm) — agent index

Warns before navigating away from a form with **unsaved changes**, via the browser's
`beforeunload` prompt. Configurable points at `/admin/config/…/leave_confirm_point`.
Version **1.1.9**. Core requirement `^10 || ^11`.

**Why it matters:** losing work damages trust in a site faster than anything else, and Drupal's long
forms make it easy — a node with forty fields and several paragraphs is twenty minutes held **only
in the browser**, discarded by one mistaken click with no warning and no recovery.

**Three things about the mechanism, which is more constrained than it looks:**
1. **Browsers deliberately limit it.** The message **cannot be customised** — it is the browser's
   wording, not the site's — and modern browsers only show it if the user has **interacted with the
   page**, precisely to stop it being used to trap people.
2. **It cannot fire on programmatic navigation.** A JavaScript route change in a decoupled or
   AJAX-heavy interface **bypasses it entirely** and needs its own handling.
3. **False positives are what make people disable it.** A form reporting changes because a widget
   rewrote a value on load, or a WYSIWYG normalised whitespace, warns on **every** exit — and a
   warning that is always wrong is dismissed reflexively, **including the time it was right**.
