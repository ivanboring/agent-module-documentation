<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# CKEditor 4 - LTS (ckeditor_lts) — agent index

Restores **CKEditor 4** (removed from core for CKEditor 5) as contrib. Version **1.0.5**.
Core `^9.4 || ^10 || ^11`. Depends on core `editor`. **Machine name `ckeditor`** (replaces the
removed core module).

**Security — read before adopting:** CKEditor 4 reached **end of life June 2023**. Free security
patches have stopped; ongoing fixes need CKSource's **paid Extended Support Model**. A WYSIWYG
editor sits in the untrusted-content path (XSS). This is a **migration bridge, not a destination** —
buy time to move to CKEditor 5, don't stay. Server-side **text-format filtering** remains your real
protection; don't rely on the frozen editor.