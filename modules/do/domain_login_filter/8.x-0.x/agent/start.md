<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Domain Login Filter — agent index

**Prevents login on a domain the user isn't assigned to** (Domain Access) — login-form validate handler
compares active domain vs the user's domain values and blocks with a form error if not assigned. Depends on
`domain`. Version **8.x-0.1-rc4**. Core `^8||^9||^10||^11`.

Genuine login-access control (correct): validate handler → form error → authentication doesn't complete
(fail-closed for that domain). Ensure domain assignments are correct; complements per-domain content
access.
