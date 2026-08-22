# Reset Password Email OTP — manual setup guide

**Reset Password Email OTP** (`reset_password_email_otp`) changes how people reset a
forgotten password. Instead of Drupal's default behaviour — emailing a one-time
login *link* — it emails a one-time passcode (OTP) that the user types into a form
to set a new password. The flow for the user is: request a reset and choose to
receive the code by email (or SMS, if configured), retrieve the code, enter it in
the "validate OTP" field, and then set a new password.

The module provides its own settings page and a **block** that renders the reset
form, so you can place the OTP reset flow wherever it fits your site. Email works
out of the box; SMS is optional and requires extra dependencies.

> **Security caveat for this version — worth knowing before you deploy.** According
> to the module's own notes, the generated OTP in this release **does not expire**
> and is **not single-use** (it is not invalidated after a successful reset). The
> passcode itself is strong — it is generated with a cryptographically secure random
> generator at a configurable length, and there is a wrong-attempt limit, so
> *guessing* is well mitigated. The real risk is the exposure window: a code that
> leaks (a forwarded email, a breached mailbox, mail logs, shoulder-surfing) can be
> replayed later to take over the account. Weigh this before enabling it on a
> sensitive site, and keep the mail path to your users trustworthy. Watch the
> project for a release that adds an expiry (TTL) and single-use invalidation.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install the module with Composer and
   enable it (plus the optional SMS dependencies).
2. [Configuration](configuration/index.md) — set the OTP options and labels, then
   place the reset form block.

## Where it lives in the admin menu

The settings form is at **Configuration → People → Reset Password Email OTP**
(`/admin/config/people/reset-password-email-otp`). You place the reset form via
**Structure → Block layout** (`/admin/structure/block`).
