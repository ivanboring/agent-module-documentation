<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Node by Email creates nodes by sending email.

---

Node by Email **creates nodes from incoming email** — it connects to a configured IMAP mailbox, and turns
matching unseen messages into nodes (subject → title, email body → body), authored as a configured user. It
provides its own permissions and a Drush command to run ingestion.

Use it to let content be posted by email. **Security caveat (important): the only authorization on which
emails become content is a match on the email's `From` header against a configured address — and `From` is
trivially spoofable.** The module runs `imap_search(..., 'FROM "<configured>" UNSEEN')` and does **no**
SPF/DKIM/DMARC verification itself, so anyone who knows the ingest mailbox and the configured sender can spoof
`From:` to inject nodes (authored as the configured, often privileged, user; auto-published if enabled).
Additionally, the email **HTML body is stored with no explicit text format**, so with a permissive default
format it becomes a **stored-XSS** vector. Mitigations are external and essential: the receiving mail server
**must enforce SPF/DKIM/DMARC** and restrict the mailbox; and you should set a **safe text format** on the body
and default to **unpublished**. See the local security.md. Configure the IMAP account and node mapping.

---

- Create nodes from IMAP email.
- Map subject/body to a node.
- Author as a configured user.
- KNOW authorization is a spoofable From header.
- Understand From has no SPF/DKIM/DMARC check here.
- Know a spoofed From can inject nodes.
- Know the body is stored with no text format (stored-XSS).
- Require the MTA to enforce SPF/DKIM/DMARC.
- Restrict the ingest mailbox.
- Set a safe body format and default unpublished.
- Provide its own permissions and a Drush command.
- Configure the IMAP account.
- Handle email-to-node.
- Ingest email.
- Configure the mapping.
- Post by email.
- Handle the ingestion.
- Create content by email.
- Secure the ingestion.
- Provide email posting.
