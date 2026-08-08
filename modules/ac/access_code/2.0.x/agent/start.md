<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Access code — agent index

Alternative login: **log in with an access code** (instead of/with password). Depends on core `user`;
provides permissions (`change own/any access code`). Login form uses **core `UserFloodControl`**
(rate-limits failed attempts via `user.flood`). Version **2.0.5**. Core `^9||^10||^11`.

**Security:** the access code is a **login credential (like a password)** — ensure codes are long/random
(not guessable/sequential), flood-controlled (yes), served over HTTPS; rotate like passwords. A code grants
account access.
