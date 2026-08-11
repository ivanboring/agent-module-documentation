<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Chat Messenger — agent index

**1:1 and group chat between site users** (AJAX long-polling; reactions, presence, read receipts, file
attachments). Depends on core `user`, `file`, `image`, `flag`. Provides permissions. Version **1.1.4**. Core
`^10.3||^11`.

Communication — stores **private messages (PII)** + file attachments: enforce per-conversation access (users read
only their own), validate attachments, handle per privacy/retention policy. Own permissions.
