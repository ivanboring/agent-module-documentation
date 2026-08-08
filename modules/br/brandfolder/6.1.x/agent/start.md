<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Brandfolder — agent index

Integrates Drupal with the **Brandfolder DAM** (use Brandfolder assets as Drupal media). Depends on core
`media`; provides permissions. Config at `brandfolder.brandfolder_settings_form`. Version **6.1.0**. Core
`^10||^11`.

**Security:** authenticates to the Brandfolder API — store the API key as a **secret** (env var / Key
entity), not in exported config. No content-access role beyond permission.
