<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Chromium Tool — agent index

**Headless Chromium service** (screenshots etc.) for other modules. Version **1.0.2**. Core `^10||^11`.

Screenshot service takes a caller-supplied URL (SSRF-relevant — callers must restrict URLs); Chrome path admin-configured. Keep runner env trusted. Depends on `ai`, core `image`.