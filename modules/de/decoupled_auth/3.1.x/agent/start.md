<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Decoupled User Authentication — agent index

Allows Drupal user records to **exist without authentication** (login-less users — CRM contacts/mailing
lists/relationships, no username/password/login). `decoupled_auth_crm` submodule. Version **3.1.5**. Core
`^10||^11`.

**Security-positive:** decoupled users **cannot log in** (no auth) → contact records don't create login
attack surface. Be clear coupled (can log in) vs decoupled; make any later coupling (granting login)
deliberate. No other access role.
