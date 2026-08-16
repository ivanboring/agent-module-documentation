# Azure OAuth Client SSO — manual setup guide

**Azure OAuth Client SSO** (`azure_oauth_sso`) lets people sign in to Drupal with
their **Microsoft Entra ID (Azure AD)** account — the Microsoft 365 identity most
organisations already have — instead of a separate Drupal password. It implements the
OAuth authorization‑code flow directly against `login.microsoftonline.com` and can map
directory fields (name, job title, department, photo) and directory groups onto the
Drupal user and its roles. It runs on Drupal 9, 10 and 11.

> ## ⚠️ Read this before deploying
>
> This release (1.0.9) has a **serious authentication defect that was verified on a
> clean install**, and you should not use it as a real login mechanism until it is
> fixed. The specifics are in the sibling [`agent/`](../agent/start.md) docs and the
> module's `security.md`, but in short:
>
> - The OAuth **`state` parameter is a hard‑coded constant (`12345`) and is never
>   checked on the callback.** `state` is the thing that stops a login request the
>   victim's browser never started from being accepted, so without it the flow is open
>   to **login CSRF** — an attacker can sign a victim into the *attacker's* account, so
>   everything the victim then enters lands in the attacker's hands.
> - **Accounts are matched on email address alone** — no stable `oid`/`sub` binding and
>   no tenant check. If the Azure app is ever configured as multi‑tenant, anyone who
>   can create a directory with a chosen email could sign in as the matching Drupal
>   user.
> - **Access and refresh tokens are stored in user entity fields**, so any export or
>   API that dumps all user fields leaks live credentials.
>
> For production single sign‑on, prefer the well‑maintained **`openid_connect`**
> ecosystem, which implements the flow correctly.

If, understanding the above, you still want to install it (for evaluation on a
throwaway site, or because you intend to patch it), the rest of this guide covers the
mechanics.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install with Composer and enable it.
2. [Configuration](configuration/index.md) — register the Azure app, enter the client
   credentials, and set up field/role mapping.

## Where it lives in the admin menu

Configuration is at the module's customer‑setup form (route
`azure_oauth_sso.customerSetup`). The login route is `/oauth/login`, which redirects
the visitor to Microsoft and receives the callback.
