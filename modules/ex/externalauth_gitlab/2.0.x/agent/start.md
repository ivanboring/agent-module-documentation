<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# External Auth GitLab — agent index

**OAuth 2.0 login via a GitLab instance** (maps the identity to a Drupal account via externalauth). Depends on
`externalauth`. Provides permissions. Version **2.0.3**. Core `^8||^9||^10||^11`.

Auth — OAuth flow **correct**: state stored in **private tempstore**, deny on `!state || state !== stored`
(**strict, no fail-open** — mitigates login CSRF; verified). Store the client **secret** as a secret, HTTPS,
trusted GitLab.
