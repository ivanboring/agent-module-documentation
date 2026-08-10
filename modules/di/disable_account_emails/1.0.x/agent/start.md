<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Disable Account Emails — agent index

Lets admins **disable specific automated user-account emails** (welcome/activated/cancelled/recovery/email-change,
etc.). Version **1.0.1**. Core `^11`.

**SECURITY CAVEAT:** some account mails are **security-relevant** — disabling **password-recovery** can lock
users out of recovery, and disabling activation/email-change **confirmation** removes a verification step. Only
disable notification-style mails; **keep recovery + verification emails on**. No access role.
