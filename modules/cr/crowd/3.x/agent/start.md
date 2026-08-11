<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Atlassian Crowd — agent index

**Login/registration against Atlassian Crowd** (external auth). Version **3.x-dev**. Core `~9||~10||^11`.

Validates via Crowd, provisions users with a random local password; credentials via a Key entity (env-backed). Depends on `externalauth`, `key`.