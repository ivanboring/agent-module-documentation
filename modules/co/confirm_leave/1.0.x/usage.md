<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Confirm Leave warns an editor before they navigate away from a form with unsaved changes — the browser's "are you sure you want to leave?" prompt, applied to Drupal forms.

---

Losing half an hour of writing to a mis-clicked link is the single most demoralising thing that happens to content editors, and it is entirely preventable: browsers expose a `beforeunload` event precisely so an application can intervene. This module wires that up for Drupal forms — `js/confirm-leave.js` tracks whether anything has been modified and registers the handler — in four files with no dependencies beyond core, no routes, permissions or configuration, on core `^10 || ^11`. The release is **8.x-1.0-beta6**. Two behaviours are worth knowing because they are browser policy rather than module choices: the **message cannot be customised** — browsers have shown a generic string for years to prevent abuse — and the prompt only appears if the user has interacted with the page, which is why it will not fire on a form the user has merely looked at. The other thing to check is interaction with AJAX-heavy forms such as Layout Builder or Paragraphs, where the dirty-state tracking has more to keep up with; and with core's own unsaved-changes warnings, which some editing experiences already provide.

---

- Warn before leaving a half-written article.
- Prevent losing edits to a mis-clicked link.
- Protect long forms from accidental navigation.
- Reduce editor frustration.
- Warn on closing a tab with unsaved work.
- Protect a webform submission in progress.
- Reduce lost work on a slow connection.
- Support editors on long content types.
- Guard against accidental back-button use.
- Reduce support requests about lost edits.
- Protect a translation in progress.
- Warn on a complex configuration form.
- Improve confidence in the editing experience.
- Reduce duplicate work from lost drafts.
- Protect a multi-step form.
- Warn before leaving a comment form.
- Support editors unfamiliar with autosave.
- Reduce data loss without autosave.
