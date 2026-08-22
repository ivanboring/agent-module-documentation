# Configuration

> ## ⚠️ Read the security warning first
>
> The list page renders the **entire process environment** — every variable's
> **name and value**, secrets included — behind a permission that is **not**
> marked *restrict access*. Before you configure or use this module, make sure the
> **Access Environment Variables** permission is granted only to roles you trust
> with every secret on the server. See the [guide](../index.md#️-security-warning--this-page-can-expose-secrets)
> for the full explanation.

## Open the settings form

1. Log in as a user with the **Administer site configuration** permission.
2. Go to **Administration → Configuration → Environment Variables**
   (the `env_variables.config.form`).

## Setting the `.env` file path

The settings form lets you tell the module **where the `.env` file lives on the
server**, relative to the docroot. The module reads that file with the PHP dotenv
library. Examples of the path value:

- `/../` — a folder outside the docroot.
- `/` — the docroot folder itself.
- `/env` — a `docroot/env` folder.

Set the path to match where your project keeps its `.env` file, then save.

## Controlling who can view

By default the **administrator** role can reach the view page. To change that, go
to the **Permissions** page and find **Access Environment Variables** — assign it
to the specific role(s) that should see the page.

Because the view page can display secret values in clear text, keep this
permission as narrow as possible. Do not give it to any role you would not trust
with the database password, API keys, and every other secret in the environment.

## Reading variables in custom code

The module exposes a service you can inject into your own module's constructor to
read the environment variables programmatically, rather than reading `$_ENV`
directly. This is the safer way to consume specific values in code without
surfacing the whole environment in the UI.
