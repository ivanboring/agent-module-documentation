<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Batch Content Sync — agent index

Pushes/receives **full content entities (nodes/media/paragraphs) between environments** (nested structures +
base64 media — content deployment). Version **2.0.2**. Core `^10||^11`.

**Security:** the cross-environment channel must be **authenticated** (only trusted environments push/receive
— else content injection) + **HTTPS**; store connection credentials as secrets; treat received content per
source trust. No access role of its own.
