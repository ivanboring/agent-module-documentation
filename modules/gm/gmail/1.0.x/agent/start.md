<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Gmail API (gmail) — agent index

**Sends Drupal's outgoing email through the Gmail API using OAuth2, via a `GmailSystem` mail plugin.**

- **Version:** 1.0.x
- **Core:** ^10.1 || ^11 · **Package:** Mail · **Configure:** `gmail.config`
- **Composer:** requires Google API client + PHPMailer (unbundled).
- **Mail plugin:** `GmailSystem` (`src/Plugin/Mail/GmailSystem.php`) sending with scope `Gmail::GMAIL_SEND`.
- **Routes:** settings `/admin/config/system/gmail` (`administer gmail module`, restrict access); OAuth callback `/gmail-api/callback` (`access content`, `no_cache`).
- **Security:** RECORDED FINDING (Danger 2) — `/gmail-api/callback` (`CalbackController::getToken`) is gated only by `access content` (effectively anonymous) and stores the OAuth token from an arbitrary `?code=` into `gmail.settings` with **no `state`/CSRF check** → OAuth CSRF + broken access control. Admin config route is properly permission-gated.

See [configure/setup.md](configure/setup.md)
