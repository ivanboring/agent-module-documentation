<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Exception Mailer (exception_mailer) — agent index

Emails an **admin on an error/exception**, with an exclude mechanism. Version **4.0.10**.

**Security:** exception emails can contain **stack traces, file paths and context** (potentially
sensitive) — direct to a secure inbox; use excludes to filter noise (an error storm = an email
storm).