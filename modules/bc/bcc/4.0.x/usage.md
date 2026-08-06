<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Blind Carbon Copy adds a BCC recipient to every email the site sends.

---

The reasons organisations want this are all variations on wanting a copy: an archive of what was sent, so a support conversation can be reconstructed; a shared inbox that sees registration and order confirmations so someone notices when they stop arriving; a compliance requirement to retain outbound correspondence; or simply debugging, because "did the email go out" is otherwise unanswerable from inside Drupal. Version **4.0.1** on `^9 || ^10 || ^11`, configured at its own settings form. **This is a data-protection decision before it is a configuration one, and it deserves to be treated that way**, because a blanket BCC copies things people did not expect to be copied. Every password reset link the site sends now also arrives in the BCC mailbox — and a reset link is a credential, so that mailbox becomes able to take over any account on the site. Every one-time login link, every account activation, every message containing personal data a user submitted, every order with an address on it, goes to the same place. Three consequences follow. **The BCC mailbox needs the protection of the most sensitive thing in it**, which is account takeover, so it should be a controlled address with restricted access rather than a team alias people forward from. **Exclusions matter more than the feature**: if the module can exempt password resets and other credential-bearing mail, use it, and if it cannot, weigh whether the archive is worth what it collects. And **recipients are not told**, which is what BCC means — so if the copy is for compliance rather than debugging, the privacy notice has to say the correspondence is retained, and the retention period has to be real rather than "forever in a mailbox".

---

- Archive all outgoing site email.
- Send a copy to a shared inbox.
- Debug whether email is sending.
- Retain correspondence for compliance.
- Monitor registration confirmations.
- Keep a copy of order emails.
- Notice when email stops arriving.
- Support a customer service inbox.
- Archive notifications for audit.
- Copy contact form emails to a team.
- Reconstruct a support conversation.
- Monitor a site's mail volume.
- Keep a record of sent notifications.
- Support a records-retention policy.
- Copy webform submission emails.
- Diagnose a missing email report.
- Monitor transactional mail.
- Archive membership correspondence.
