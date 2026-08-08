<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Decoupled Pages — agent index

Quickly create **Drupal routes that serve single-page applications (SPAs)** — mount a JS app at a path
(progressive decoupling). Ships `decoupled_pages_test`. Version **1.0.x** (dev). Core `^8||^9||^10||^11`.

Decoupled/developer feature — route serves the SPA shell (govern route access normally); the SPA's data
access (JSON:API/REST) is separate.
