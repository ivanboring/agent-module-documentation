<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Datalist provides a Drupal render element for HTML5's `<datalist>` — a text input with browser-native suggestions, where the user may pick a suggested value or type their own.

---

`<datalist>` sits between a text field and a select: the browser shows a suggestion list as the user types, but the field still accepts anything. That is the right control for "usually one of these, sometimes something else", and Drupal has no core render element for it. This module adds one — `src/Element` for the element, `templates/input--datalist.html.twig` for the markup, `src/Plugin` for a field widget, `src/Cache` for cache handling of the suggestion list, and `DatalistSupportedHelper` for browser-support questions. There are no routes, permissions or configuration, and the only dependency is core; `require-dev` mentions Webform, indicating that integration is tested. Two things follow from using a native element. It needs no JavaScript and inherits the browser's own accessibility handling, which is a genuine advantage over scripted autocompletes. But browser behaviour differs — styling of the dropdown is largely not author-controllable, and the exact filtering behaviour varies — so it is a good fit where "close enough, everywhere" beats pixel-identical.

---

- Offer suggestions on a text field without JavaScript.
- Let users pick a suggestion or type their own value.
- Add native autocomplete to a form.
- Suggest common values on a webform.
- Give a free-text field a hint list.
- Avoid a scripted autocomplete widget.
- Inherit browser accessibility for suggestions.
- Provide a datalist render element to custom code.
- Reduce typos on a semi-open field.
- Suggest units, categories or codes.
- Cache a suggestion list.
- Support a form that must work without JS.
- Give an admin form a value hint.
- Reduce load compared with an AJAX autocomplete.
- Offer country or language suggestions.
- Prefill likely values on a survey.
- Use HTML5 semantics in a Drupal form.
- Suggest previously used values statically.
