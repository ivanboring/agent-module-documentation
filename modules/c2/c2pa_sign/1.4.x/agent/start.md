<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# C2PA Sign — agent index

**Signs compatible media assets with C2PA content-provenance metadata** on upload/publish (prove authenticity/
origin). Version **1.4.10**. Core `^10||^11`.

**Security/authenticity-positive** — the **signing private key/certificate** must be stored securely (key store/
HSM/env, not code/config), protected + rotated (a leaked key lets others forge provenance in your name). No access
role.
