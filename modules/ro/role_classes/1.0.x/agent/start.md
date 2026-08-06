<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Role Classes (role_classes) — agent index

Adds a configurable **CSS class to `<body>` per role** the current user holds. Configure at
`/admin/config/…/role_classes`. Version **1.0.7**.
Core requirement `^10.2 || ^11 || ^12`.

**Say this plainly: a role class is not a way to hide anything.** A body class is a **styling
hook**. CSS that hides an element hides it **visually** — the element is still in the HTML, readable
in view-source, present to a screen reader unless also removed from the accessibility tree, and
available to anything that scrapes the page. **Using it to keep content from a role is not a weak
control; it is no control, because the content was sent.**
- must not be **seen** → entity or field access;
- must not be **reachable** → a permission.

**Two points that follow from the mechanism itself:**
1. **A body class is a cache context.** A page varying by role must declare **`user.roles`**, or the
   first visitor's classes are cached and served to everyone — the wrong presentation for a
   class-driven layout, and worse for anything relying on it.
2. **The class names are published.** Every visitor can read which role names the site uses.
   Unremarkable usually; worth a moment where the names themselves say something
   (`role--pending-investigation`).

Legitimate uses: an editorial cue that you are logged in with elevated rights, hiding a marketing
banner from staff, adjusting for the toolbar, styling a members' area.
