<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Node by Email — agent index

Creates **nodes from unseen IMAP email** (subject->title, body->body, configured author). Ingests via
`hook_cron` (interval in seconds), the Drush command `node_by_email:generate_node` (alias `nbe-gn`), or a
manual admin batch form. Needs the PHP **IMAP extension** and Drush `^11`. Version **4.0.x**. Core
`^9 || ^10 || ^11`.

**SECURITY CAVEAT:** authorization is only a match on the **spoofable `From` header**
(`imap_search FROM "…" UNSEEN`, no SPF/DKIM/DMARC in-module) — a spoofed `From` can **inject nodes** as the
configured author (shipped default **uid 1**); the HTML body is stored with **no text format** -> stored-XSS
with a permissive format; the IMAP password is stored **plaintext** in config. Default `publishing_option` is
`0` (unpublished). Mitigate externally (MTA enforces SPF/DKIM/DMARC + restrict the mailbox) and set a
non-privileged author + safe body format. See `security.md`.

## Capabilities

- **Configure** the IMAP mailbox, sender, content type, author, publish state, cron interval — [configure/settings.md](configure/settings.md)
- **Run ingestion** from the CLI (`drush nbe-gn`) — [drush/commands.md](drush/commands.md)
- **Call the services** programmatically (fetch unseen mail, mid->node) — [api/services.md](api/services.md)
- **Permissions** gating the two admin routes — [permissions/permissions.md](permissions/permissions.md)
