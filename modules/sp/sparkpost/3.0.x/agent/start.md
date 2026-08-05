<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Sparkpost (sparkpost) — agent index

Sends Drupal's outgoing mail through **SparkPost**. Settings and a test-send form at
`/admin/config/services/sparkpost` behind `administer sparkpost`. Submodule `sparkpost_requeue`.
Version **3.0.0-alpha2** — an **alpha**, carrying every password reset on the site. Weigh that.
Core requirement `^10 || ^11`.

**Why a transactional provider at all:** `mail()` from a web server largely does not arrive — no
SPF/DKIM alignment, no sending-IP reputation — and the messages that matter most (password resets,
order confirmations, activations) are the ones silently filed as spam. A provider owns the
delivery infrastructure and, crucially, **reports what happened to each message**.

**Two things to get right:**
1. **The API key is a live credential** — it can send mail as your domain and read delivery data.
   Environment variable + **Key** entity, never exported configuration, and **scope it to sending**
   rather than issuing an account-wide key.
2. **Plan for delivery failure.** When the provider is unreachable or the key is rotated without
   updating the site, Drupal's mail just stops — usually unnoticed until a user reports a missing
   reset. Monitor the provider's bounce/rejection reporting; silence is not success.

Peers: SendGrid, Mailgun, Postmark, and `symfony_mailer_office365` (same wave) for Microsoft 365.
