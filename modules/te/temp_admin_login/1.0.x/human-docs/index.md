# Temporary Admin Login — manual setup guide

**Temporary Admin Login** (`temp_admin_login`) lets an administrator generate a
self‑expiring, token‑based login link. You pick a role and an expiry time, click
**Generate link**, and hand the resulting URL to someone — a developer who needs to
look at the site, or an editor reviewing work — who can then log in just by clicking
it, with no password. It depends only on Drupal core's **User** module and ships no
submodules.

The idea is convenient temporary access, but you should understand what this
version actually does before you rely on it — its behaviour does not match what it
advertises, and the gap is a serious security problem (details below). Generating a
link requires the **Administer site configuration** permission, so an outsider
cannot mint one directly, but every link that *is* generated is more dangerous than
the UI implies.

This guide is written for a **human** setting the module up through the admin UI.
If you want terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Please read this before using it

As shipped in version **1.0.1**, the module has three defects that combine to make
every generated link a **reusable super‑admin credential**:

- **The role you choose is ignored.** Whatever role you select, the login link
  always logs the visitor in as **user 1** — the site's super‑admin. A link you
  generate "for an editor" actually grants full administrative access.
- **The token is not cryptographically secure.** It is built with `mt_rand`, a
  predictable pseudo‑random generator, rather than a proper cryptographic source.
- **The link is reusable, not single‑use.** It keeps working for the whole expiry
  window, so anyone who sees it — including through browser history, `Referer`
  headers, or server and proxy access logs — can reuse it to log in as super‑admin.

In short: do not treat the role selector as a real restriction, treat any link you
generate as a shareable super‑admin password, keep the expiry window as short as
possible, and avoid using this module for anything sensitive until a fixed release
addresses these issues (honouring the stored role, using a cryptographically secure
single‑use token). If you must use it, only ever hand a link to someone you would
be comfortable giving full super‑admin access, and over a private channel.

## Contents

1. [Installation](installation/index.md) — install with Composer and enable the
   module.
2. [Configuration](configuration/index.md) — generate a temporary login link.

## Where it lives in the admin menu

Once enabled, the link generator is at **Configuration → System → Generate
Temporary Admin Login Link**. You reach it from the admin menu under Configuration;
the module does not expose a separate settings page beyond this generator.
