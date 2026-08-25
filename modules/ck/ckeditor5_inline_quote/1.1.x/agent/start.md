<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# CKEditor 5 Inline Quote (ckeditor5_inline_quote) — agent index

One CKEditor 5 plugin: a toggleable toolbar button that wraps the current selection in an inline
quotation `<q>` element (for quoting inside a sentence, versus core's block quote). Trivial module:
**no PHP at all** — no `.module`/`.install`, no routes, services, permissions, config schema, drush,
or Drupal plugin types. The whole module is a CKEditor 5 plugin declared in
`ckeditor5_inline_quote.ckeditor5.yml`, a prebuilt JS bundle (`js/build/inlineQuote.js`), a toolbar
icon (`icons/quote.svg`) and one admin CSS file. Version **1.1.0**, package **CKEditor**.

Mechanism: the CKE5 plugin `inlineQuote.InlineQuote` (source under `js/ckeditor5_plugins/inlineQuote/src/`,
tutorial-derived) registers a command `toggleInlineQuote` and a toolbar button of the same name. In
the editor model it toggles the text attribute `inline_quote` (`isFormatting`, `copyOnEnter`), which
the converter maps one-to-one to the view/output element `<q>`. There is nothing to configure per
site beyond adding the button to a toolbar and allowing `<q>` in the text format.

- **Depends on:** nothing in info.yml (`dependencies:` absent); relies on core CKEditor 5. Core: `^9.3 || ^10 || ^11`.
- **Package:** CKEditor. **Configure route:** none (`configure` null). **Permissions:** none. **Drush:** none. **Plugin types:** none (it is itself a CKE5 plugin, not a new plugin type).
- **Setup:** enable the module, then on *Admin → Configuration → Content authoring → Text formats and editors* edit a CKEditor 5 format and drag the **Inline quote** button into the active toolbar — per text format.
- **The failure everyone hits:** the text format's allowed-HTML list must permit `<q>`, or the markup is stripped on save and the button appears to do nothing. Check that first when someone reports it not working.
- **No security surface** (no PHP, no server-side input handling; pure editor plugin emitting a fixed `<q>` element).

## Key facts (real machine names)
- **CKE5 plugin definition id:** `ckeditor5_inline_quote_inline_quote` (in `ckeditor5_inline_quote.ckeditor5.yml`).
- **JS plugin exported:** `inlineQuote.InlineQuote` (index.js exports `{ InlineQuote }`; glue plugin requires `InlineQuoteEditing` + `InlineQuoteUI`).
- **Toolbar item id / command:** `toggleInlineQuote` (button label "Inline quote", toggleable).
- **Editor model attribute:** `inline_quote` (extends `$text`); **view/output element:** `<q>` (the only allowed element declared: `elements: [<q>]`).
- **Libraries:** `ckeditor5_inline_quote/inline_quote` (editor, `js/build/inlineQuote.js`; deps `ckeditor5/ckeditor5`, `core/ckeditor5.translations`); `ckeditor5_inline_quote/admin.inline_quote` (admin CSS `css/inline_quote.admin.css` — styles the toolbar icon `.ckeditor5-toolbar-button-toggleInlineQuote`).
- **Icon:** `icons/quote.svg`. **Translations shipped:** de, en, fr (`js/build/translations/`).
- Note: version 1.1.0 emits a bare `<q>` with no attributes. (The drupal.org project description mentions later custom class/cite support; that is not present in this source.)
