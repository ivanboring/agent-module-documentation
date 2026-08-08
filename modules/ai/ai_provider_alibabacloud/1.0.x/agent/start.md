<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Alibaba Cloud Model Studio AI Provider — agent index

**AI provider plugin** for the Drupal **AI module** using **Alibaba Cloud Model Studio (Qwen models)**.
Depends on `ai` (+ `key`). Config at `ai_provider_alibabacloud.settings_form`. Version **1.0.0-alpha1**.
Core `^10.3||^11`.

**Credentials via the Key module** (Bearer token over TLS — verification not disabled); never plaintext.
Content sent for AI goes to Alibaba Cloud (data-handling/residency consideration).
