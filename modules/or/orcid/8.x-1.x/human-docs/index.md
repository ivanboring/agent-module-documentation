# ORCID — manual setup guide

**ORCID** (`orcid`) lets people create an account and log in to your Drupal site with
their **ORCID iD** using OAuth2, and lets existing users connect (link) their ORCID
iD to their account. ORCID is the open, non‑profit registry of unique researcher
identifiers, so this module is aimed at academic and research sites that want
researchers to sign in with the identity they already use.

To work, the module needs an **OAuth application registered with ORCID**, which gives
you a **client ID** and **client secret** to configure in Drupal. Users are then sent
to ORCID to authorise, and returned to your site to be logged in or linked.

> ## ⚠️ Important security warning — do not deploy this version unpatched
>
> The agent documentation for this module records a serious authentication flaw
> (a "danger 3" finding). Its OAuth callback validates **no OAuth `state`
> parameter** at all, which enables **login‑CSRF** (a victim can be tricked into
> being logged into an attacker's account) and, for an already‑logged‑in victim,
> **forced account‑linking that can lead to account takeover**. The same callback
> has compounding problems noted in the docs: it can leak OAuth access/refresh
> tokens and user data into the page on a username collision, it creates new
> accounts with an empty email, it stores tokens in plaintext, and one ORCID
> endpoint URL uses cleartext `http://`.
>
> Treat this module as **vulnerable until patched**. The documented fixes are to
> generate and verify an OAuth `state` (and reject callbacks that don't match),
> remove the debug output that serialises tokens into the page, store tokens via the
> Key module / encryption, require a real email address, and use **HTTPS** for all
> ORCID URLs. Do not run it on a production site until these are addressed.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install with Composer and enable the
   module.
2. [Configuration](configuration/index.md) — register an ORCID OAuth application and
   store its client ID and secret safely (and the security caveats to weigh first).

## Where it lives in the admin menu

The module handles the ORCID OAuth login and account‑linking flow (the callback lives
at `/orcid/oauth`) and provides its own permissions. You supply the ORCID OAuth
application's client ID and secret in its settings — see
[Configuration](configuration/index.md).
