<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Big Blue Button — agent index

Integrates **BigBlueButton** web conferencing into Drupal as a field (host/join meetings, manage recordings).
Config at `bigbluebutton.settings`; provides permissions. Version **1.0.0-beta5**. Core `^10|^11`.

**Security (correct):** BBB API is authenticated by a **shared secret** — the module builds **signed API
URLs** with it (standard BBB SHA-checksum). Store the **BBB secret securely** (it's a credential); HTTPS to
the BBB server; gate meeting/recording management by permission.
