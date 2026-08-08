<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Environment Variables — agent index

Admin UI to **view environment variables** (from a configured `.env` file) + a settings form. Config at
`env_variables.config.form`; provides permissions. Version **3.0.0**. Core `^9||^10||^11`.

**SECURITY (see `security.md`, finding):** the list page (`/admin/config/env/list`) **dumps the entire
`$_ENV`** — every var **name + value** — behind a `View env_variables` permission **not marked
`restrict access: true`**. The environment holds secrets (verified: `PGPASSWORD`/DB password present; API
keys would show too). **Do not grant the view permission to any role you wouldn't trust with every
secret.** Fix: restrict permission, list only module-managed vars, redact values.
