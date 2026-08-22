# CKEditor Remove Format — manual setup guide

**CKEditor Remove Format** (`ckeditor_remove_format`) enhances CKEditor 5's Remove
Format plugin — the tool that strips inline formatting (bold, italic, inline
styles) from selected text — by adding the ability to **remove formatting
automatically on save**. So beyond the familiar clear‑formatting button, you can
have a text format quietly clean formatting out of content whenever it is saved.

The everyday use case is taming pasted content: text copied from Word, Google
Docs, or another web page arrives carrying formatting an editor rarely wants. The
Remove Format button lets an editor clear it from a selection on demand, and the
accompanying **Remove Format Filter** can enforce the cleanup on save so nobody has
to remember to do it.

It is a content‑editing feature that affects inline markup on the edited content
and has no access‑control role. It has no other module dependencies and works on
Drupal 10.1 and 11. Note the module is maintained for fixes only and is **not
covered by the Drupal security advisory policy**.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install with Composer, enable it, add
   the button, and (optionally) turn on the remove‑on‑save filter.

There is **no separate settings page** — the setup is adding the toolbar button
and, if you want automatic cleanup, enabling the filter on a text format. Both are
covered in Installation.

## Where it lives in the admin menu

The module adds no admin configuration page. You configure it per text format at
**Configuration → Content authoring → Text formats and editors**
(`/admin/config/content/formats`): add the remove‑format button to the CKEditor 5
toolbar, and enable the **Remove Format Filter** on the same format if you want
formatting stripped automatically on save.

## How to use it

With the button on the toolbar, an editor selects text and clicks it to strip
inline formatting from the selection. If you have enabled the Remove Format Filter
on the format, formatting is also cleaned automatically when the content is saved —
no manual step required.
