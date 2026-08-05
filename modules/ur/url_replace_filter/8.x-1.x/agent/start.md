<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# URL Replace Filter (url_replace_filter) — agent index

Text-format **filter** rewriting the base URL of **`<img>` and `<a>` elements** at render time.
Depends on core `filter`; configured per format at `/admin/config/content/formats`.
Version **8.x-1.2**. Core requirement `^10 || ^11`. Declares `php: 8.2`.

**The archetypal migration cleanup.** After a move, every body-field image still points at the old
domain — and they often **still load**, which is worse than breaking: production quietly serves
assets from a machine about to be switched off.

**Narrower than a general regex filter, and that is the virtue.** It targets `<img>` and `<a>`
specifically, so it will not corrupt a code sample or prose that happens to contain the old domain
as text. Compare `regex_text_replacement` (wave 71) when the rewrite is not URL-shaped.

**Two things to check:**
- **Filter order** — it must run where the elements are still present and any HTML-restricting
  filter has already had its say.
- **Whether the durable fix is available instead** — core's `base_url`, or an actual content
  rewrite. A render-time filter is a workaround, and workarounds outlive the situations that
  justified them.
