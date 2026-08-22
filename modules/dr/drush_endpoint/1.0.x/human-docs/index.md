# Drush Endpoint — manual setup guide

**Drush Endpoint** (`drush_endpoint`) exposes a small set of Drush commands over
HTTP so they can be triggered with a POST request. It exists for **automated
testing**: when your test suite (for example Cypress) runs in a different
container from your web server and cannot call Drush directly, this module lets
the tests reach a handful of maintenance commands over HTTP instead — clearing
caches, running cron, resetting migrations, or getting a one-time login link.

Commands are reached at `POST /api/drush/{command}`, and only a short allowlist is
permitted: `cr`, `cron`, `uli`, `mim`, `mr`, `sapi-i`, and `sapi-r`. It supports
Drupal 10, 11, and 12.

**Read this before you install it.** This is a remote command-execution surface,
and you must understand exactly what you are turning on. The endpoint is **off
unless you explicitly enable it** in a settings file, and there are precautions
that make it awkward to run on production — but those precautions will not save you
if you enable it there deliberately. As shipped (version 1.0.0-rc1) the endpoint
does **not authenticate the caller**: once enabled, any request — including an
anonymous one — can run the allowlisted commands. Several of those commands are
dangerous in the wrong hands: `cron`, `mim`, `sapi-i`, and `cr` can be used to
exhaust resources (denial of service), `mr` **rolls back migrations and deletes
migrated content**, and `uli` hands out a one-time login link that can lead to
account takeover. Treat this module as a testing-only tool for isolated
environments, never as something to enable on a public site without adding your
own authentication and firewalling the path.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install with Composer, enable the
   module, and switch the endpoint on in `settings.local.php`.

There is **no admin configuration page** for this module — it is switched on and
off entirely through settings flags in code, covered in
[Installation](installation/index.md).

## How to use it

Once enabled (see [Installation](installation/index.md)), a test or script sends a
**POST** request to `/api/drush/{command}`. For example, to run cron from a
Cypress test:

```js
cy.request({
  method: 'POST',            // must be POST
  url: '/api/drush/cron',
});
```

Or from the command line with cURL:

```bash
curl -X POST https://SITENAME.ddev.site/api/drush/cron
```

Requesting a one-time login link works the same way and returns JSON containing
the link:

```js
cy.request({ method: 'POST', url: '/api/drush/uli' }).then((response) => {
  const uli = response.body.output.trim();
  cy.visit(uli);   // you are now logged in
});
```

Note that `uli` requires an extra opt-in flag beyond the general enable flag — see
[Installation](installation/index.md).
