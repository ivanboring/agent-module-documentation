<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Dynamic Image Generator — agent index

**Generates images from HTML/CSS templates via third-party APIs** (token replacement + media). Depends on core
`file`, `image`, `media`, etc. Provides permissions. Version **1.1.2**. Core `^10||^11`.

Media/integration — **sends template content (token-replaced data) to an external image API** (egress); **API
key** as a secret (env/Key, HTTPS). No access role beyond permission.
