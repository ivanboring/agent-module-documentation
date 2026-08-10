<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Dropbox Sign — agent index

Generates/processes **eSignature requests via the Dropbox Sign (HelloSign) API**. Depends on `encryption`.
Provides permissions. Version **1.1.0**. Core `^10.2||^11`.

Integration — the public callback **verifies the HMAC `event_hash`** (`hash_hmac('sha256', event_time.event_type,
api_key)`) + replay protection; API key stored **encrypted**. Minor: uses `!==` not `hash_equals`. No access role
beyond permission.
