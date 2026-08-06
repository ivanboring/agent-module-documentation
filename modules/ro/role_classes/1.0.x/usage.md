<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Role Classes adds a configurable CSS class to the `<body>` tag for each role the current user holds, so a theme can style by role.

---

The uses are ordinary presentation ones: giving editors a visual cue that they are logged in with elevated rights, hiding a marketing banner from staff, adjusting spacing where an administrative toolbar is present, or styling a members' area differently. Doing it without a module means a preprocess function per site, which is small and gets rewritten every time. Version **1.0.7** on `^10.2 || ^11 || ^12`. **The thing to say plainly is what a role class is not: it is not a way to hide anything.** A class on the body tag is a styling hook, and CSS that hides an element hides it visually while the element remains in the HTML, readable in view-source, present to a screen reader unless also removed from the accessibility tree, and available to anything that scrapes the page. Using it to keep content from a role is not a weak control — it is no control, because the content was sent. Anything that must not be seen needs entity or field access; anything that must not be reachable needs a permission. Two further points that follow from the mechanism rather than from misuse. **A body class is a cache context**, so a page varying by role must declare `user.roles`, or the first visitor's classes are cached and served to everyone — which for a class-driven layout means the wrong presentation, and for anything relying on it is worse. And **the class names are published**: every visitor can read the role names the site uses, which is unremarkable on most sites and worth a moment where the role names themselves say something, such as `role--pending-investigation`.

---

- Style the site differently for editors.
- Hide a marketing banner from staff.
- Adjust spacing when the toolbar is present.
- Style a members' area distinctly.
- Give logged-in editors a visual cue.
- Theme by role without a preprocess function.
- Adjust layout for administrators.
- Style a subscriber-only section.
- Show a role-specific colour accent.
- Adjust a header for authenticated users.
- Support a role-aware design.
- Style a training environment for testers.
- Adjust typography for a role.
- Show an editorial affordance by role.
- Support a multi-audience theme.
- Style a partner portal's users.
- Adjust a footer by role.
- Provide role hooks for CSS.
