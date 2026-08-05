<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# DANSE (danse) — agent index

**D**rupal **A**udit **N**otification **S**ubscription **E**vent: a framework separating event
sources, notifications and per-user subscriptions. PHP >= 8.1. Core requirement `^10.3 || ^11`.
Settings at `/admin/config/system/danse`; user subscriptions at `/user/{user}/subscriptions`.

Eight submodules — pick the sources you need rather than enabling all:

| Submodule | Source / role |
|---|---|
| `danse_content` | entity activity |
| `danse_config` | configuration changes |
| `danse_user` | user events |
| `danse_form` | form submissions |
| `danse_log` | log entries |
| `danse_generic` | arbitrary/custom events |
| `danse_webhook` | outbound webhook delivery |
| `eca_danse` | drive ECA workflows from subscriptions |

Key facts:
- **There is a prune form** at `/admin/config/system/danse/prune`, and its existence is the
  signal: an event framework accumulates rows continuously. Plan pruning before enabling broad
  sources like `danse_log` or `danse_config` on a busy site.
- `config_devel` in the info file ships the reporting UI: views `danse_events`,
  `danse_notifications`, `danse_user_notifications`, `danse_notification_actions`, plus a user
  notifications block.
- ECA (`^2.0`) and Push Framework (`^2.3`) are **`require-dev`/optional**, not hard dependencies —
  the base framework works without them.
- **Privacy:** the audit dimension records who did what and when, and notifications distribute
  it. That is personal data with a retention obligation; the prune form is the mechanism, but
  someone has to set the policy.
