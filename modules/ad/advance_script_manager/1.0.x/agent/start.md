<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Advance Script Manager — agent index

Lets admins **manage custom script snippets injected into the site** (tracking/marketing tags; per-script
visibility; disabled by default; injected via `hook_page_attachments_alter`). Gated by
`advance_script_manager_settings` (correctly **`restrict access: TRUE`**). Config at
`advance_script_manager.advance_script_controller_build`. Version **1.0.5**. Core `^10.1||^11`.

**SECURITY — dangerous by design:** snippets are arbitrary code run in every visitor's browser, so the
permission ≈ **full site compromise**. Grant **only to fully trusted admins**, never editors. Module gates
it correctly (restricted permission + default-disabled). Tracking scripts → cookie-consent/privacy.
