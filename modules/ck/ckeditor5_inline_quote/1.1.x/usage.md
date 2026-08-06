<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
CKEditor 5 Inline Quote adds a toolbar button that marks a selection as an inline quotation, for quoting inside a sentence rather than pulling a whole paragraph out as a block quote.

---

CKEditor ships block quote and nothing for the inline case, so editors reach for italics or manual quotation marks — which look right and mean nothing. An inline quotation element carries semantics a screen reader and a search engine can use, and lets the theme style quotations consistently, including locale-appropriate quotation marks. This module supplies the plugin (`inlineQuote.InlineQuote`), a toolbar icon and the CSS, declared through `ckeditor5_inline_quote.ckeditor5.yml` in the standard way.

Setup is the usual CKEditor 5 path: enable the module, then drag the button into the toolbar for the text formats that should have it, and make sure the format's allowed-HTML list permits the element the plugin produces. That last step is the one people miss — with a restricted format the markup is stripped on save and the button appears to do nothing.

It is a small, focused module with no PHP at all: no routes, no permissions, no services. That also means there is nothing to configure per site beyond the toolbar and the format.

---

- Mark a quotation inside a sentence.
- Quote a phrase without breaking the paragraph.
- Give quotations real semantics instead of italics.
- Style quotations consistently from the theme.
- Use locale-appropriate quotation marks via CSS.
- Improve screen reader handling of quoted phrases.
- Add the button to selected text formats only.
- Give editors a quoting tool that survives copy-paste cleanup.
- Distinguish quoted text from emphasised text.
- Quote a source inline in an article.
- Support editorial style guides that require semantic quotes.
- Keep quotation markup out of manual HTML editing.
- Replace hand-typed quotation marks in body copy.
- Check that a text format allows the quotation element.
- Add the plugin to a restricted format deliberately.
- Audit which formats offer the inline quote button.
