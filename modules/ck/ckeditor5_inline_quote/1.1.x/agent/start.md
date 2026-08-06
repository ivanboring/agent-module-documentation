<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# CKEditor 5 Inline Quote (ckeditor5_inline_quote) — agent index

One CKEditor 5 plugin: wraps a selection in an inline quotation element.
Version **1.1.0**. Core `^9.3 || ^10 || ^11`. **No PHP** — no routes, permissions, or services.

Plugin declared in `ckeditor5_inline_quote.ckeditor5.yml` as
`ckeditor5_inline_quote_inline_quote` → `inlineQuote.InlineQuote`, library
`ckeditor5_inline_quote/inline_quote`.

Setup: enable, then add the button to the toolbar **per text format**.

**The failure everyone hits:** the text format's allowed-HTML list must permit the element the
plugin emits, or the markup is stripped on save and the button looks broken. Check that first when
someone reports it doing nothing.