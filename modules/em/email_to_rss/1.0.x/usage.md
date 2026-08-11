<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Email to RSS pulls email messages from an IMAP folder and exposes them as an RSS feed.

---

Email to RSS **pulls messages from an IMAP mailbox and publishes them as an RSS feed** — polling an IMAP
folder and exposing the emails as feed items/detail pages, so a mailbox can be consumed as a feed. Admin
configuration is gated by `administer site configuration`; the feed itself lives at
`/feeds/email-to-rss/{feed_id}/{token}`.

Use it to turn a mailbox into a feed. It is a web-services feature with two security considerations. (1)
**Feed exposure**: the feed route is public (`_access: TRUE`) but protected by an unguessable **`{token}` in the
URL** — so the token URL is effectively a **bearer secret**: anyone who has the link can read the email content
(and the link can leak via browser history, `Referer`, proxy logs, or sharing). Use a high-entropy token, treat
the URL as sensitive, don't point it at a mailbox with confidential mail, and prefer HTTPS. (2) **IMAP
credentials**: it stores mailbox credentials — keep them as secrets (env/Key/secure config) and use TLS/IMAPS to
the mail server. It has no role-based access-control on the feed (the token is the only gate). Configure the IMAP
connection and feed.

---

- Pull email from an IMAP folder.
- Publish it as an RSS feed.
- Serve items at a token URL.
- Gate admin config by 'administer site configuration'.
- Serve web services.
- Consume a mailbox as a feed.
- EXPOSE the feed at a public route gated only by an unguessable {token} (a bearer secret).
- Leak email content to anyone with the link (history/Referer/logs/sharing).
- Use a high-entropy token + treat the URL as sensitive + HTTPS.
- Store IMAP credentials as secrets + use TLS/IMAPS.
- Have no role-based access on the feed (token is the only gate).
- Configure the IMAP connection and feed.
- Handle email-to-RSS.
- Pull email.
- Configure the feed.
- Expose emails.
- Handle the mailbox.
- Publish feeds.
- Secure the token + credentials.
- Provide email-to-RSS.
