<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Forgot Username — agent index

Public **"forgot username" form** (`/user/username`, logged-out users) — emails a user their username by
email. Version **2.x** (dev). Core `^9||^10||^11`.

**SECURITY (see `security.md`, finding):** the form is an **account-enumeration oracle** — existing
email → "Your username has been emailed"; unknown email → "There is no account with that email address."
Anonymous attacker enumerates registered emails (phishing/credential-stuffing target list; verified).
Fix: single neutral message + flood control (as `username_enumeration_prevention` does). Username itself
only goes to the owner.
