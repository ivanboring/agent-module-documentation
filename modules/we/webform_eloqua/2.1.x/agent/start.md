<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Webform Eloqua (webform_eloqua) — agent index

Webform **handler** posting submissions to Oracle Eloqua. Version **2.1.0**.
Core `^9 || ^10 || ^11`. Depends on `webform` and `eloqua_api_redux` (one credential, several
consumers — the right layering).

**Two things belong in any form-to-CRM integration:** the submission is **personal data leaving the
site**, decided when the form is designed rather than when the handler is enabled; and **handler
failure needs a decision** — does the submission still save locally, does the user see an error,
is anyone told? Silent failure is how an organisation finds out three weeks later that a campaign
collected nothing.

**Check whether it queues.** A synchronous post ties form submission to Eloqua's uptime.