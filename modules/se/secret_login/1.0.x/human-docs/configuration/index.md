# Configuration

Secret Login is configured by an administrator in Drupal's configuration: you
define a **secret path**, map it to a **user account**, and optionally use the
one-time **token** flow. Before you create any secret URL, please read the
security section below — the way this module works (as of 1.0.2) means a badly
chosen path can hand out access to whoever finds it.

## Create a secret URL

As an administrator, open the module's configuration and create a secret login
entry:

- **Custom path** — the slug that appears in the login URL
  (`/secret-login/access/<custom-path>`). This string is effectively the
  password, so treat it like one (see below).
- **User account** — the account a visitor will be logged in as when they hit the
  path.
- **Active toggle** — a button to enable or disable the entry.
- **Token option** — optionally use the one-time token flow, which issues a login
  URL whose token is valid for about an hour before a new one is generated.

Once saved and active, visiting `/secret-login/access/<custom-path>` logs the
visitor in as the mapped user.

## Security — read this carefully

The convenience of this module comes with real risk. In version 1.0.2, all of the
login routes are reachable by **anonymous** visitors, and the secret design has
three compounding weaknesses:

1. **Direct login needs no token.** `/secret-login/access/{custom_path}` logs the
   anonymous visitor in as the configured user based on the path alone — there is
   **no token, no expiry, and it is reusable**. The path is the only secret, and
   because it is a human-chosen slug it is low-entropy and guessable. The URL is a
   permanent bearer credential and will leak through browser history, `Referer`
   headers, and server or proxy logs.
2. **Anonymous visitors can mint tokens.** `/secret-login/generate/{custom_path}`
   is also anonymous. Anyone who knows the path can generate fresh, valid login
   tokens at will — so even the token flow adds no real protection while the path
   is the gate.
3. **The token check itself is sound** (it validates expiry, is single-use, and
   uses a strong random value) — but that is undermined by weakness 2.

**The impact:** if a secret URL points at a privileged account — which is exactly
what the module is marketed for (quick admin/staff access) — the result is
effectively unauthenticated account takeover, up to full super-admin (user 1).
This has been demonstrated live: an anonymous request to a configured path logged
the caller in as user 1.

## How to reduce the risk

If you still choose to use this module, take these precautions:

- **Never point a secret URL at a highly privileged account** (especially user 1)
  unless you fully accept the risk.
- **Use a long, high-entropy path** — a random string, not a memorable word or
  vanity slug. The path is the entire secret.
- **Prefer the token flow** and, if you can, restrict who can reach the generate
  route (the shipped module does not gate it behind a permission, so consider
  additional protection at the web-server/firewall layer).
- **Disable or delete entries** as soon as you no longer need them, and rotate the
  path if you suspect it has leaked (remember it can appear in logs and history).
- Consider whether Drupal core's own one-time login link (`drush uli`) or a
  proper SSO module meets your need instead, since those do not expose a reusable
  password-in-the-URL.

## Save and test

After saving an entry, test the path from a private/incognito window with no
session. If it logs you straight in, remember that anyone else with that URL can
do the same — which is precisely why the path must be treated as a secret
credential.
