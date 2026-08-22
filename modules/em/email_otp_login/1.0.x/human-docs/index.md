# Email OTP Login — manual setup guide

**Email OTP Login** (`email_otp_login`) adds passwordless login to your site.
Instead of typing a password, a registered user asks for a login code, receives a
six‑digit one‑time password (OTP) by email, and enters that code to sign in. It
depends only on core's **User** module, and it is meant for registered users —
there is no anonymous login. To make it reachable, you add a menu link (or link
anywhere you like) pointing at `/otp-email`, which is where the "request a code"
flow begins.

> **Important security warning — do not deploy this module as‑is.** Its own
> documentation records a **critical account‑takeover flaw**. The request and
> verify endpoints (`/otp-email` and `/validate-otp/{email}`) are **public**
> (available to anonymous visitors), and the six‑digit code is stored raw with
> **no expiry**. Verification has **no rate‑limiting, no attempt counter, and does
> not invalidate the code after failed guesses** (the code is removed only on a
> successful login). Because a six‑digit code has only 1,000,000 possible values,
> an attacker who knows a victim's email address — often public — can trigger a
> code and then brute‑force it with unlimited attempts and unlimited time until
> they are logged in as that user, including administrators. Keep this module
> **disabled or restricted** until a release enforces attempt‑limiting on
> `/validate-otp`, invalidates the code after a few failures, and adds a short
> expiry. Do not rely on it as a secure authentication method.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install the module with Composer and
   enable it (but read the security warning above first).

There is no configuration page for this module. Once enabled, the login flow is
reached by linking to `/otp-email`; the code delivery relies on your site's
standard mail setup.

## How to use it

The module works through two paths that Drupal exposes once it is enabled:

- **`/otp-email`** — the visitor enters their registered email address and
  requests a one‑time code, which is emailed to them.
- **`/validate-otp/{email}`** — the visitor enters the six‑digit code they
  received to complete the login.

To surface the flow to users, add a menu link to `/otp-email` (for example under
**Structure → Menus**). The code itself is generated with a secure random source
and compared with a constant‑time check, but — as the security warning above
explains — the surrounding flow lacks the throttling and expiry that make an OTP
login safe, so treat this as experimental until those protections land.
