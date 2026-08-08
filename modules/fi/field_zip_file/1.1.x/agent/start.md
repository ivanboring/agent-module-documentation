<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Field Zip File — agent index

Field to **upload a ZIP and extract on save**; can **serve extracted HTML** (iframe formatter).
Extraction via core `Archiver\Zip`; adds **zip-bomb scanner** + **forbidden-extension filter** +
bypass permission. Depends on core `field`, `file`. Version **1.1.0-beta2**. Core `^8||^9||^10||^11`.

**SECURITY (inherent to feature):** serving uploaded HTML/JS = **XSS-by-design from your origin** —
restrict the upload field to trusted roles and configure forbidden extensions before exposing it.
Extraction uses core's archiver (trusted mechanism); bomb/extension safeguards must be configured.
