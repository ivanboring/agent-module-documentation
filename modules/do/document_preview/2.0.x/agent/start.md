<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Document Preview — agent index

Previews **PDF/office documents** (.pdf/.doc(x)/.xls(x)/.ppt(x)/.txt) inline via the **Google Docs
viewer**; provides a "Document" block type. Depends on core `field`, `file`. Version **2.0.0**. Core
`^11.1||^12`.

**Privacy caveat:** preview hands the document URL to **Google** (doc must be public; content processed by
Google) — **do NOT use for confidential documents**; use a self-hosted viewer for those.
