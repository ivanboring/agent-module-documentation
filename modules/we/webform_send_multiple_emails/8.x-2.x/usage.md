<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Webform Send Multiple Emails sends a submission to each recipient individually rather than as one email addressed to all of them.

---

Webform's email handler takes a list of recipients and sends one message to all of them. That is usually fine and occasionally a disclosure: every recipient sees every other recipient's address in the To field, which on a form notifying a group of external people is a straightforward leak of a mailing list.

BCC avoids the disclosure and introduces its own problems — messages are more likely to be filtered as spam, replies behave oddly, and personalisation is impossible because there is one message.

Sending individually is the third option and the one this module implements. Each recipient gets their own email, addressed to them, so nobody sees anyone else's address and each message can in principle carry recipient-specific content.

The trade is volume. One submission to forty recipients becomes forty messages, which matters for a rate-limited mail provider and for whatever sending reputation the domain has. On a form with any volume, check the provider's limits before enabling it.

**The privacy argument is the reason to reach for it**, and it is worth stating plainly to whoever configures the form: the default handler discloses the recipient list to everyone on it, and on a form involving external parties — applicants, complainants, participants — that list is itself personal data.

---

- Stop recipients seeing each other's addresses.
- Notify a group without disclosing the list.
- Avoid BCC and its spam filtering.
- Send personalised notifications per recipient.
- Protect applicants' addresses on a form.
- Handle complaint notifications privately.
- Check a mail provider's rate limits.
- Estimate message volume per submission.
- Protect a sending domain's reputation.
- Replace a multi-recipient email handler.
- Explain the disclosure risk to a form owner.
- Treat a recipient list as personal data.
- Configure per-recipient content.
- Audit webforms with multiple recipients.
- Document the sending behaviour for form owners.
- Review recipient lists on existing webforms.
