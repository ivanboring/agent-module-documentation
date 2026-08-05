<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Field Widget Actions attaches buttons to field widgets — most obviously "suggest content for me" style actions — giving a standard way to hang behaviour off an individual field on the edit form.

---

Adding a button next to one field on a node form is a recurring request and normally means a form alter, custom AJAX, custom markup and a modal implemented by hand. This module turns that into a plugin: `FieldWidgetActionBase` plus `RefinementAwareInterface` define the contract, actions are configured per field widget, and a controller renders them in a modal at `/admin/field-widget-action/modal/{plugin_id}/{tempstore_id}` with state carried in the private tempstore. That route is declared with `_permission: 'access content'` and a comment saying access is checked in the form wrapper — the substantive control is that the tempstore is `tempstore.private`, which is namespaced per user, so another user's `tempstore_id` yields nothing. `RefinementAwareInterface` hints at the intended use case: iterative refinement of a suggestion, which is the shape of AI-assisted authoring. Four stylesheets are shipped, including a `gin-modal-compatibility-fix.css`, so the Gin admin theme is explicitly catered for, and `mkdocs.yml` means documentation is maintained as a site. It declares **no dependencies at all** and targets `^10.3 || ^11.1 || ^12`, already covering Drupal 12.

---

- Add a "suggest" button next to a text field.
- Attach an AI content suggestion to a field widget.
- Offer editors a one-click action per field.
- Refine a generated suggestion iteratively.
- Render a field action in a modal.
- Add a lookup button to a reference field.
- Give a summary field a generate action.
- Standardise custom field buttons across a site.
- Avoid bespoke form alters for each button.
- Support the Gin admin theme's modals.
- Add a translate action to a single field.
- Write a custom action as a plugin.
- Attach a validation helper to a field.
- Prefill a field from an external source.
- Give editors contextual help per field.
- Add an action without changing the field type.
- Prepare an editorial workflow for Drupal 12.
- Provide alt-text generation on an image field.
