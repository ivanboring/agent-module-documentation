<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Alt Text Generator — agent index

**AI alt-text generation** for images (POST `/api/alt-text-generator/generate`). Version **1.0.3**. Core `^10||^11`.

Generate endpoint gated by `access content` and calls the AI provider (cost) — any content-access role can drive spend; settings gated by `administer site configuration`. Depends on core `image`.