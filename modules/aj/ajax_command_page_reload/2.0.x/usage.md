<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Ajax Command Page Reload adds an AJAX command that tells the browser to reload the current page, for the cases where a partial update cannot express what changed.

---

Drupal's AJAX system is a set of commands returned from the server — replace this selector, insert that markup, open a dialog, show a message — and the model works well while the change is local. It works badly when the change is not: a form submission that alters the user's roles, switches the active language, changes a global setting, or does anything the page's cached blocks, menus and contextual links depend on. Replacing one region leaves the rest of the page describing a state that no longer exists, and chasing every affected region with its own replace command is fragile and never quite complete. A reload is the honest answer, and having it as a **command** rather than as a lump of inline JavaScript keeps it inside the AJAX framework where the rest of the response already lives. Version **2.0.0** (2024) on `^8` through `^11`, no dependencies. Two points of judgement. A reload **discards the state the visitor had** — scroll position, other open dialogs, unsaved input elsewhere on the page — so it should be a considered choice rather than the first reach when a partial update proves fiddly. And on a form, **the redirect after submission** is usually the better tool: Drupal's normal post-submit redirect achieves the same fresh page through the framework's own path, and a reload command is for the cases where there is no submission to redirect from.

---

- Reload the page after an AJAX form submits.
- Refresh after a role change.
- Reload after switching language.
- Update the whole page after a setting change.
- Refresh cached blocks after an action.
- Avoid replacing many regions at once.
- Reload after a bulk operation.
- Refresh menus after a permission change.
- Reload from a dialog's submit handler.
- Keep the reload inside the AJAX framework.
- Avoid inline JavaScript for a reload.
- Refresh contextual links.
- Update after a theme switch.
- Reload after a cart change.
- Refresh after enabling a feature.
- Force a fresh render.
- Reload after a workflow transition.
- Refresh the page from a custom command.
