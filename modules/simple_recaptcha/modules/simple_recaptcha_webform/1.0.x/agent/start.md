<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Simple reCaptcha — Webform integration (agent index)

Adds one **Webform handler** so reCAPTCHA can be enabled per webform. Depends on
`simple_recaptcha` (for the site/secret keys) and `webform`. No settings form of its own —
add the handler to a webform. No permissions, no Drush.

## The handler

`\Drupal\simple_recaptcha_webform\Plugin\WebformHandler\SimpleRecaptchaWebformHandler`
— `@WebformHandler(id = "simple_recaptcha", label = "reCAPTCHA", category = "simple_recaptcha")`,
`cardinality = CARDINALITY_SINGLE`, `results = RESULTS_IGNORED`.

Add it via *Webform → Settings → Handlers → Add handler → reCAPTCHA*, or in the webform's
`handlers` config. Handler settings (schema `webform.handler.simple_recaptcha`,
`defaultConfiguration()`):

| Setting | Default | Meaning |
|---|---|---|
| `recaptcha_type` | `v2` | `v2` (checkbox) or `v3` (invisible). |
| `v3_score` | `90` | Minimum v3 score to accept (v3 only). |
| `v3_error_message` | (a default sentence) | Message shown when a v3 check fails. |
| `hide_badge_v3` | `false` | Hide the v3 badge. |

## Where keys come from

Site key / secret key are **not** on the handler — they come from the parent module's global
config `simple_recaptcha.config` (`site_key`/`secret_key` for v2, `site_key_v3`/`secret_key_v3`
for v3). Configure those first: see
[`../../../../1.0.x/agent/configure/settings.md`](../../../../1.0.x/agent/configure/settings.md).

Stored location: inside the host webform config at
`webform.webform.<id>` → `handlers.<key>` with `id: simple_recaptcha`.
