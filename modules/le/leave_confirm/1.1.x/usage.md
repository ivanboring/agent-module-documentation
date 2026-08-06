<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Leave Confirm warns a user who navigates away from a form with unsaved changes, using the browser's leave-confirmation prompt.

---

Losing work is the editorial complaint that damages trust in a site fastest, and Drupal's long forms make it easy: a node with forty fields and several paragraphs represents twenty minutes of work held only in the browser, and a mistaken click on a menu item, a browser back gesture, or an accidental tab close discards all of it with no warning and no recovery. Every application that holds work in a form guards against this, and the browser provides the mechanism — a `beforeunload` handler produces the "Leave site? Changes you made may not be saved" dialog. Version **1.1.9** on core `^10 || ^11`, with configurable points at its own admin route so the warning applies where it is wanted rather than everywhere. Three things are worth knowing about this mechanism, because it is more constrained than it looks. **Browsers deliberately limit it**: the message cannot be customised — it is the browser's wording, not the site's — and modern browsers only show it at all if the user has interacted with the page, precisely to stop it being used to trap people. **It cannot fire on programmatic navigation**, so a JavaScript-driven route change in a decoupled or AJAX-heavy interface bypasses it entirely and needs its own handling. And **false positives are what make people disable it**: a form that reports changes because a widget rewrote a value on load, or because a WYSIWYG normalised whitespace, produces a warning on every exit, and a warning that is always wrong is dismissed reflexively — including the time it was right.

---

- Warn before leaving an unsaved node form.
- Prevent losing twenty minutes of editing.
- Guard a long webform against navigation.
- Warn on accidental tab close.
- Protect a paragraph-heavy page's edits.
- Reduce editorial frustration.
- Guard a settings form against loss.
- Warn before a back-button navigation.
- Protect a translation in progress.
- Guard a media upload form.
- Warn on unsaved layout changes.
- Protect a survey submission in progress.
- Reduce support requests about lost work.
- Guard a complex configuration form.
- Warn before leaving a comment draft.
- Protect an application form's entries.
- Guard a moderation review form.
- Warn on unsaved profile edits.
