<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# CKEditor 5 Custom Paste (ckeditor5_custom_paste) — agent index

Site-controlled filtering of **pasted** content in CKEditor 5, configured per text format. Depends
on core `ckeditor5`. Version **1.0.3** (2024). Core requirement `^9.3 || ^10 || ^11`.

**Keep these two straight — they are easy to conflate:**
1. **This is editorial hygiene, not a security control.** The security boundary is the **text
   format's filter chain**, applied on **render**, regardless of how markup entered the field. A
   paste filter runs **in the browser** and is bypassed by the source-editing button or an API
   write. **Never let a paste rule substitute for a correctly configured `filter_html`.**
2. **Filtering is lossy by design.** An editor who pastes a carefully formatted table and gets
   plain rows will paste again. The rules must keep what the site's own styles can express and
   discard the rest — which takes a pass with **real content**, not a guess.

**What it addresses:** clipboard markup from Word/Docs/web pages carries inline fonts, point sizes,
colours, `mso-` attributes, deep span nesting and hard-coded widths. CKEditor 5 already filters
against the enabled schema, which removes what it cannot represent and keeps plenty a site would
rather not have.
