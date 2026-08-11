<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Atomic Content-Addressable Storage — agent index

**Deduplicated content-addressable file storage** (`cas-public://` / `cas-private://`). Version **1.0.0-beta3**. Core `^10.2||^11`.

Private files correctly gated via `hook_file_download()` (mirrors core) — the anonymous serve route does not leak private content (defensive positive). Admin perm `administer atomic cas`. Depends on core `file`.