<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# CKEditor5 page break (ckeditor5_page_break) — agent index

Lets an editor insert an explicit **page break**, controlling where a printed or exported document
divides. Depends on core `ckeditor5`. Version **1.1.1**.
Core requirement `^9 || ^10 || ^11`.

**Why it matters once the output is a formal artefact:** browsers decide breaks by **flowing
content**, so a document generated from a Drupal page divides wherever the flow lands. A report's
chapter should start on a new page; a signature block should not split; a clause should not be
orphaned from its heading; a certificate is **one page**.

**Three things worth attaching:**
1. **The break is `page-break-after: always` in print CSS** — nothing on screen, everything on
   paper. An editor **cannot see its effect without previewing print**, so a break inserted and
   forgotten is invisible until someone prints.
2. **PDF generation has to respect it**, and that depends entirely on the generator — a **headless
   browser honours print CSS**, while some library-based generators ignore it. **Test against the
   site's actual export path.**
3. **The element must survive the text format.** A page break is markup, and a filter stripping
   unknown elements removes it **silently** — the commonest reason it "does not work".
