<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Alternative Login ID & Display Name (alt_login) — agent index

Lets users **log in with an alternative identifier (e.g. email)** and configures the displayed username.
Config at `alt_login.admin`. Version **2.0.12**. Core `^9||^10||^11`.

Auth/user — changes the **login identifier**, not the credential check (password still verified by core, flood
control still applies). Ensure the alt identifier is **unique**; email-as-login can ease enumeration (keep
messages neutral). No other access role.
