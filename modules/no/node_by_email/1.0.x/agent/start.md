<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Node by Email — agent index

Creates **nodes from emails fetched over IMAP** (subject→title, body→body, configured author). Provides
permissions + a Drush command. Version **1.x** (dev). Core `^9||^10||^11`.

**SECURITY CAVEAT:** authorization is only a match on the **spoofable `From` header** (`imap_search FROM "…"`,
no SPF/DKIM/DMARC in-module) — a spoofed `From` can **inject nodes** as the configured author; the HTML body is
stored with **no text format** → stored-XSS with a permissive format. Mitigate externally (MTA enforces
SPF/DKIM/DMARC + restrict the mailbox); set a safe body format + default unpublished. See `security.md`.
