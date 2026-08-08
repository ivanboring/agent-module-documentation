<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Moonshot AI Provider — agent index

AI **provider plugin for Moonshot AI** (route Drupal AI operations to Moonshot models). Depends on `ai`.
Config at `ai_provider_moonshot.settings_form`. Version **1.2.1**. Core `^10.3||^11`.

**Security:** store the Moonshot API key as a **secret**; prompts sent leave the site (data-handling). No
access role.
