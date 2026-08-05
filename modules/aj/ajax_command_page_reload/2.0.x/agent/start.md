<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Ajax Command Page Reload (ajax_command_page_reload) — agent index

Adds an **AJAX command** that reloads the current page. No dependencies. Version **2.0.0** (2024).
Core requirement `^8 || ^9 || ^10 || ^11`.

**Where a partial update stops working:** a submission that alters the user's **roles**, switches
the active **language**, or changes a global setting invalidates the page's cached blocks, menus
and contextual links. Replacing one region leaves the rest describing a state that no longer
exists, and chasing every affected region with its own replace command is fragile and never quite
complete.

**Why a command rather than inline JS:** it stays inside the AJAX framework where the rest of the
response already lives.

**Two points of judgement:**
1. **A reload discards the visitor's state** — scroll position, other open dialogs, unsaved input
   elsewhere. Make it a considered choice, not the first reach when a partial update turns fiddly.
2. **On a form, the post-submit redirect is usually the better tool.** Drupal's normal redirect
   gets the same fresh page through the framework's own path. This command is for cases with **no
   submission to redirect from**.
