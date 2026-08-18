<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Node by Email creates Drupal nodes from incoming email fetched over IMAP.

---

Node by Email **connects to a configured IMAP mailbox and turns unseen messages into nodes** — the email subject becomes the node title, the email body becomes the node body, authored as a configured user. Ingestion runs three ways: automatically on `hook_cron` (throttled by a configurable interval in seconds), on demand via the Drush command `node_by_email:generate_node` (alias `nbe-gn`), and manually through an admin "Unseen Emails" form that lists unseen mail in a tableselect and processes the selected rows through the Batch API. All mail selection is done with `imap_search(..., 'FROM "<configured>" UNSEEN')`, so only unread messages whose `From` matches the configured sender are picked up, then flagged `\Seen \Flagged` after processing. It requires the PHP **IMAP extension** (`ext-imap`) at runtime and Drush `^11`. Configuration lives at `/admin/config/node_by_email/nodebyemailconfig` (route `node_by_email.node_by_email_config_form`): IMAP connection string, account username, password, the sender address, target content type(s), author user, published/unpublished, and cron interval.

**Security caveat (by design, important):** the only authorization on which emails become content is a match on the email's `From` header against a configured address — and `From` is trivially spoofable. The module does **no** SPF/DKIM/DMARC verification itself and stores the email HTML body with **no explicit text format**, so anyone who knows the ingest mailbox and configured sender can spoof `From:` to inject nodes (authored as the configured user — the shipped default is **user 1**), and with a permissive default text format that HTML becomes stored XSS. The shipped default `publishing_option` is `0` (unpublished), which limits immediate exposure. The IMAP password is stored **plaintext** in config. Mitigations are external and essential: the receiving MTA must enforce SPF/DKIM/DMARC and restrict the mailbox; set a non-privileged author, a safe body text format, and keep new nodes unpublished pending review. See the local `security.md`.

---

- Create Drupal nodes from IMAP email (subject -> title, body -> body).
- Post content from a phone/mobile mail client instead of the Drupal UI.
- Author incoming nodes as a configured user.
- Restrict ingestion to messages from one configured sender address.
- Ingest only unseen (unread) messages, then mark them Seen + Flagged.
- Run ingestion automatically on cron at a configurable interval.
- Run ingestion on demand from the CLI with `drush node_by_email:generate_node`.
- Manually review unseen mail and create nodes from selected messages (batch form).
- Map incoming mail to one or more selected content types.
- Choose whether new nodes are published or unpublished on creation.
- Connect to Gmail / Yahoo / AOL or any IMAP-over-SSL mailbox.
- Verify the IMAP connection from the config form (success/warning message).
- Gate the config UI behind the "configure node by email module" permission.
- Gate the unseen-mail list behind the "access to unseen mail list" permission.
- KNOW authorization is a spoofable From header (no SPF/DKIM/DMARC in-module).
- Know a spoofed From can inject nodes as the configured (default: uid 1) author.
- Know the body is stored with no text format (stored-XSS with a permissive format).
- Know the IMAP password is stored plaintext in config.
- Require the receiving MTA to enforce SPF/DKIM/DMARC.
- Restrict the ingest mailbox and use a non-privileged author.
- Set a safe body format and keep new nodes unpublished.
- Require the PHP IMAP extension (`ext-imap`) on the server.
