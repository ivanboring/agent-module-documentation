<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Blind Carbon Copy (bcc) — agent index

Adds a **BCC recipient to every email the site sends**. Configure at `/admin/config/…/bcc`.
Version **4.0.1**. Core requirement `^9 || ^10 || ^11`.

**This is a data-protection decision before it is a configuration one.** A blanket BCC copies things
nobody expected to be copied:
- **every password reset link** — and a reset link is a **credential**, so the BCC mailbox becomes
  able to **take over any account on the site**;
- every one-time login link, account activation, order with an address on it, and message containing
  personal data a user submitted.

**Three consequences:**
1. **The BCC mailbox needs the protection of the most sensitive thing in it** — which is account
   takeover. A controlled address with restricted access, not a team alias people forward from.
2. **Exclusions matter more than the feature.** If the module can exempt password resets and other
   credential-bearing mail, use it. If it cannot, weigh whether the archive is worth what it
   collects.
3. **Recipients are not told** — that is what BCC means. For a compliance archive the privacy notice
   must say correspondence is retained, and the **retention period has to be real**, not "forever in
   a mailbox".

Legitimate drivers: an archive for reconstructing support conversations; a shared inbox that notices
when confirmations stop arriving; a retention requirement; and debugging, since "did the email go
out" is otherwise unanswerable from inside Drupal.
