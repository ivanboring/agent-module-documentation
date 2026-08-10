<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Contact Storage Options Email Recipient maps options fields to email recipients.

---

Contact Storage Options Email Recipient lets a **contact form's options field determine the email
recipient** — replacing the default recipient field so a submission is routed to different addresses based on
the option the user selected (e.g. "Sales" → sales@, "Support" → support@). It depends on the Contact Storage
module.

Use it to route contact submissions by category. It is a forms feature. Security note: the recipient mapping is
**admin-configured** (the user picks an option, not an arbitrary address), which is the safe design — do not let
free-text user input choose the recipient (that would enable using your site as a mail relay); this module maps
via a fixed options→address table. It has no access-control role. Configure the option-to-recipient mapping.

---

- Route submissions by options field.
- Map options to email recipients.
- Replace the default recipient field.
- Depend on the Contact Storage module.
- Serve forms.
- Send to category addresses.
- Use an ADMIN-configured options→address map.
- Not let free-text choose the recipient (relay risk).
- Keep the mapping fixed.
- Have no access-control role.
- Configure the mapping.
- Handle recipient routing.
- Route emails.
- Configure the mapping.
- Map recipients.
- Handle the form.
- Send to recipients.
- Route by option.
- Avoid a mail relay.
- Provide option-based recipients.
