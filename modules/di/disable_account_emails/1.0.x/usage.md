<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Disable Account Emails allows administrators to disable specific user account emails.

---

Disable Account Emails lets administrators **turn off specific automated user-account emails** — the
per-event account mails core sends (welcome, account activated/blocked/cancelled, password recovery, email
change, etc.), so you can suppress the ones you don't want. It requires core 11, in the Mail package.

Use it to silence unwanted account emails. **Security caveat:** some account emails are **security-relevant** —
the **password-recovery** email is how users regain access, and account-activation / email-change-confirmation
emails are part of verifying identity and changes. Disabling those can **lock users out of recovery** or remove
a verification step (e.g. silently allowing an email change without confirmation). Only disable the
**notification-style** mails you truly don't need (e.g. "welcome" on an admin-created site), and **keep the
password-recovery and verification emails enabled** unless you have a deliberate alternative. It has no
access-control role. Configure which emails are disabled — carefully.

---

- Disable specific account emails.
- Suppress welcome/activated/cancelled mails.
- Silence unwanted notifications.
- Require core 11.
- Target per-event account mails.
- Serve administrators.
- KEEP password-recovery emails enabled.
- Keep verification/email-change confirmations.
- Not lock users out of recovery.
- Only disable notification-style mails.
- Have no access-control role.
- Configure disabled emails carefully.
- Handle account emails.
- Disable emails.
- Configure the mails.
- Suppress mails.
- Handle the settings.
- Turn off emails.
- Choose carefully.
- Provide account-email control.
