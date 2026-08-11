<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Email to RSS — agent index

**Pulls email from an IMAP folder and exposes it as an RSS feed** at `/feeds/email-to-rss/{feed_id}/{token}`.
Version **1.0.0**. Core `^10||^11`.

Web-services — the feed route is public, gated only by an unguessable **`{token}`** = a **bearer secret** exposing
email content (leaks via history/Referer/logs/sharing): use a high-entropy token, treat the URL as sensitive,
HTTPS. Store **IMAP credentials** as secrets + use TLS/IMAPS. No role-based access on the feed.
