# Secret Login — manual setup guide

**Secret Login** (`secret_login`) lets a person log in simply by visiting a URL
you have configured. An administrator defines a secret path and maps it to a user
account; when someone visits that URL, they are logged in as that account without
entering a username or password. The intended use is convenience — quickly
getting into an admin or staff account through a predefined link. The module can
also mint a one-time token URL for a configured user, with a token that stays
valid for about an hour before a new one is generated.

> **Read this before you deploy it — serious security caveat.** As shipped in
> version 1.0.2, this module can amount to **unauthenticated account takeover** if
> a secret URL targets a privileged account. The login routes are reachable by
> anonymous visitors, and the direct-login path (`/secret-login/access/{path}`)
> logs the visitor in as the configured user with **no token, no expiry, and
> reusably** — the *only* secret is the path you chose, which is human-picked and
> therefore guessable, and which leaks through browser history, referrer headers,
> and server logs. Worse, the token-generation route
> (`/secret-login/generate/{path}`) is also anonymous, so anyone who knows the path
> can mint fresh valid tokens at will. This has been verified live logging an
> anonymous visitor in as user 1. Treat this module as high-risk: if you use it at
> all, target only low-privilege accounts, choose a long high-entropy path (not a
> memorable slug), and understand that the URL is a permanent bearer credential.
> See [Configuration](configuration/index.md) for the full rundown and how to
> reduce the risk.

The module has no module dependencies and ships no submodules. It supports Drupal
9 through 11 (and is declared for 12). It provides its own permission and config
schema, and its behavior is entirely driven by the secret URLs an administrator
configures — it does nothing until you create one.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token-cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install with Composer and enable the
   module.
2. [Configuration](configuration/index.md) — create a secret URL, and the
   security precautions you must take.

## How to use it

Once you have configured a secret path mapped to a user, visiting
`/secret-login/access/<your-path>` logs the visitor in as that user and redirects
to that user's page. The optional token flow issues a one-time login URL for a
configured user that expires after roughly an hour. Because of the security
caveats above, be extremely deliberate about which accounts you expose and how
guessable your paths are.
