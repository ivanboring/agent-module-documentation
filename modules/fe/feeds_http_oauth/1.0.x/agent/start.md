<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Feeds HTTP OAuth Fetcher — agent index

**OAuth 2.0-enabled HTTP fetcher for Feeds (3.x)** — imports from OAuth-protected APIs (auto token
handling). Depends on `feeds`, `key`. Version **1.0.0-alpha1**. Core `^10||^11`.

**Store OAuth client ID/secret as Keys** (env/secure provider), never plaintext. Fetched data becomes
content — treat as external input.
