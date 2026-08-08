<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Langdock Provider for Drupal AI — agent index

AI **provider plugin for the Langdock LLM platform** (route Drupal AI operations to Langdock models). Depends
on `ai`. Config at `ai_provider_langdock.settings_form`. Version **1.0.0-beta1**. Core `^10.5||^11.2`.

**Security:** store the Langdock API key as a **secret** (Key entity/env var), not exported config; prompts
sent leave the site (data-handling). No access-control role.
