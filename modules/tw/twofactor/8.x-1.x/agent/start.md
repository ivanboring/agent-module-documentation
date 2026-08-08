<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# 2factor.app (twofactor) — agent index

Second authentication factor delegating verification to the **external 2factor.app** SaaS. A
`KernelEvents::REQUEST` subscriber redirects a 2FA-enabled user to `/user/{uid}/twofactor/auth` until
the session flag `twofactor.allowed` is set. Version **8.x-1.4**. Core `^10.3||^11||^12`.

**SECURITY — FAILS OPEN.** On the initial `set_auth` call, any non-`code:100` response OR any
exception sets `twofactor.allowed = TRUE` and admits the user ("Temporary allowed"). Provider outage,
egress block, invalid per-user creds, or an attacker disrupting the outbound call all **skip the
second factor**. Verified on this site. The polling path (`get_auth`) correctly does *not* fail open.
Do not rely on it as an enforced factor until it denies on error. See `security.md`.
