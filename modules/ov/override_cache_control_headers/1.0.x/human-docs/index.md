# Override Cache Control Headers — manual setup guide

**Override Cache Control Headers** (`override_cache_control_headers`) lets you set
the **`Cache-Control` HTTP header on a per‑URL basis**, overriding whatever Drupal
would normally compute. This is useful for bypassing or tuning reverse‑proxy and
CDN caches for specific pages — for example telling a shared cache not to store
`/sitemap.xml`, or giving `/blog` a one‑hour `max-age`.

You configure it with simple text rules: one URL per line, the path and the
desired header separated by a `|`. You can also set a rule that lasts only for a
**limited time** (a third `|`‑separated value in minutes), after which the original
headers are automatically restored — handy for a temporary change during an
incident or a campaign. There's a Drush command for the timed overrides too.

> **`Cache-Control` is a security control, not only a performance one.** It
> decides whether a shared cache — a CDN, a corporate proxy, a browser on a shared
> machine — may store a response. A too‑permissive override on a page that returns
> anything user‑specific can cause one user's page to be served to another. **The
> direction of the mistake matters:** too conservative merely costs performance;
> too permissive can leak private data. Review every rule that touches a path
> returning personalised content.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install with Composer and enable the
   module.
2. [Configuration](configuration/index.md) — write the per‑URL header rules,
   including timed overrides.

## Where it lives in the admin menu

The settings form is at **Configuration → Development → Override Cache Control
Headers** (`/admin/config/develop/override-cache-control-headers`), behind the
restricted **Administer override cache control headers** permission.
