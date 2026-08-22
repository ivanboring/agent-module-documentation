# League OAuth Login — manual setup guide

**League OAuth Login** (`league_oauth_login`) lets people sign in to your Drupal
site with an external **OAuth 2.0** provider — GitHub, GitLab, and others —
instead of a Drupal username and password. It is built on the well‑regarded
`league/oauth2-*` client libraries and was originally developed to power the
authentication on violinist.io. On login it uses Drupal's **External
Authentication** to map the OAuth identity to a Drupal account, creating or
matching one as needed.

The base module owns the whole login *flow* — the redirect out to the provider,
the callback that comes back, the token exchange, and the account provisioning.
Each **provider** is a small submodule: this project ships
`league_oauth_login_github` and `league_oauth_login_gitlab` in the box, and the
family extends to others such as
[Bitbucket](../../league_oauth_login_bitbucket/8.x-1.x/human-docs/index.md) and
[Slack](../../league_oauth_login_slack/8.x-1.x/human-docs/index.md). You enable
the base module plus one provider submodule per login source, and configure each
provider with its client ID, client secret, and redirect URI.

> **Security caveat for this version (2.0.8) — please read before deploying.**
> The OAuth `state` parameter is the defence against login CSRF, and in this
> release **that check fails open when the user's session has no stored state** —
> which is the normal situation for someone merely browsing. In that case a
> callback carrying *any* `state` value passes, and the module exchanges the
> request's `code` and logs the browser in. An attacker who obtains a valid
> authorization code can lure a fresh‑session victim to the callback and **force
> them into the attacker's account** (an OAuth *login CSRF* / session‑swap). Until
> it is fixed upstream: restrict and monitor OAuth login, always serve the site
> over **HTTPS**, and consider patching the callback to deny whenever `state`
> does not equal the session state (including when the session state is empty) and
> to make the state single‑use. See the module's own security notes.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install with Composer and enable the
   base module plus the provider submodules you need.
2. [Configuration](configuration/index.md) — the OAuth model, per‑provider client
   ID / secret / redirect URI, secret storage, and the state/CSRF caveat.

## Where it lives in the admin menu

League OAuth Login does not add a single central settings page; instead each
provider (a submodule) carries its own configuration where you enter that
provider's client ID, client secret, and redirect URI. Configure each provider
you enable, then the OAuth login option becomes available on the login form.
