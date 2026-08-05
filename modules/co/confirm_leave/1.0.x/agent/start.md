<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Confirm Leave (confirm_leave) — agent index

Warns before navigating away from a form with unsaved changes. No dependencies, no routes, no
permissions, no configuration. Core requirement `^10 || ^11`.
**Release is 8.x-1.0-beta6 — beta.**

Key facts:
- Whole module: `js/confirm-leave.js`, `confirm_leave.libraries.yml`, `.module`.
- **Two behaviours are browser policy, not module limitations** — expect questions about both:
  - the **message cannot be customised**; browsers show a generic string to prevent abuse;
  - the prompt only fires if the user has **interacted** with the page, so it will not appear on a
    form merely opened and left.
- **Check two interactions:** AJAX-heavy forms (Layout Builder, Paragraphs) where dirty-state
  tracking has more to follow, and core's own unsaved-changes warnings, which some editing
  experiences already provide — two prompts is worse than one.
- Contrast `autosave_form` (a `varbase_core` dependency, wave 56), which prevents the loss rather
  than warning about it.
