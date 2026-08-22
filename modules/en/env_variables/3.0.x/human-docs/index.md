# Environment Variables — manual setup guide

**Environment Variables** (`env_variables`) provides an admin interface for
viewing environment variables loaded from a configured `.env` file, plus a
settings form to point at that file. It reads the file using the `vlucas/phpdotenv`
("PHP dotenv") library, and it also exposes a service so your own custom modules
can read those variables by injecting it into a constructor.

> ## ⚠️ Security warning — this page can expose secrets
>
> Although the module is described as viewing "user‑defined" variables, its list
> page renders the **entire process environment** — every variable's **name and
> value** — into a table. Access is gated only by a `View env_variables`
> permission that is **not** marked *restrict access*.
>
> The environment is exactly where secrets live — database passwords, API keys,
> and tokens (this project's own convention stores keys in environment
> variables). That means the page will display those secret values in clear text
> to anyone who holds the view permission. **Do not grant that permission to any
> role you would not trust with every secret on the server.** Treat the page as a
> full‑secrets dump until the module is changed to restrict the permission, list
> only module‑managed variables, and stop printing secret values.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install with Composer (required, for
   the PHP dotenv library) and enable the module.
2. [Configuration](configuration/index.md) — pointing at the `.env` file, and
   locking down the view permission.

## Where it lives in the admin menu

Once enabled, the module adds an **Environment Variables** item under
**Administration → Configuration** (the `env_variables.config.form` settings
form). By default the administrator role can access it; you can change which role
holds the `Access Environment Variables` permission on the Permissions page.
