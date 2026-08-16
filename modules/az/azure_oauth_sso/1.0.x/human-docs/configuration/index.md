# Configuration

> **Reminder:** this release has a verified `state`/CSRF authentication defect, matches
> accounts on email alone, and stores tokens in user fields. Treat any deployment as
> evaluation‑only until those are fixed. See the [overview](../index.md).

## 1. Register an application in Azure

In the Azure portal, register an application under Microsoft Entra ID. From it you
need:

- the **client (application) ID**,
- a **client secret**,
- the **tenant** value (keep this **single‑tenant** — the module does not enforce a
  tenant check, and a multi‑tenant setting would let any Microsoft account match a
  Drupal user by email),
- a **redirect URI** pointing at this site's `/oauth/login` path.

Grant the app the Microsoft Graph `User.Read` scope (the module also requests
`offline_access`).

## 2. Enter the credentials in Drupal

Open the module's customer‑setup form (route `azure_oauth_sso.customerSetup`) and enter
the client ID, client secret and tenant.

### Keep the client secret out of committed config

The Azure client secret is a credential. Do **not** commit it in exported
configuration. Supply it from the environment:

```bash
ddev dotenv set .ddev/.env --azure-oauth-client-secret=<value>
ddev restart
```

(The flag becomes the variable `AZURE_OAUTH_CLIENT_SECRET`. Never commit `.ddev/.env`.)
Reference it from Drupal via `getenv('AZURE_OAUTH_CLIENT_SECRET')` or a Key entity
backed by the env provider.

## 3. Field and role mapping

The module provides screens to map directory attributes (name, job title, department,
photo, and so on) onto Drupal user fields, and to map Azure directory groups onto
Drupal roles. Configure these to suit your directory.

## 4. Add a login link

The sign‑in flow starts at `/oauth/login`, which redirects the visitor to Microsoft
and handles the return. Link to it from your login page or a menu so users can reach
it.

## Security follow‑ups you should not skip

Because of the defects noted above, if you are determined to run this module you should
at minimum: keep the Azure app **single‑tenant**; be aware that access/refresh tokens
sit in **user entity fields** and exclude those fields from any export, JSON:API
resource or view that dumps all user fields; and ideally apply a patch that generates a
per‑request random `state`, stores it in the session, and verifies it on the callback
with `hash_equals()` before exchanging the code. The details are in the module's
`security.md`.
