# Configuration

You define which URLs get which `Cache-Control` headers on the module's settings
form. Rules are plain text, one per line.

## Open the settings form

1. Log in as a user with the **Administer override cache control headers**
   permission (restricted — trusted administrators only).
2. Go to **Configuration → Development → Override Cache Control Headers**, or
   navigate directly to `/admin/config/develop/override-cache-control-headers`.

## Permanent per‑URL rules

In the main textarea, enter one rule per line in the form:

```
URL|headers
```

Separate the path from the desired `Cache-Control` value with a `|`. For example:

```
/sitemap.xml|must-revalidate, no-cache, private
/contact|no-store
/blog|public, max-age=3600
```

Once saved, the module applies the specified `Cache-Control` header to each
matching URL (it listens to the response event and rewrites the header).

## Timed (scheduled) overrides

To apply an override only for a set period, add a third `|`‑separated value giving
the duration in **minutes**:

```
URL|headers|minutes
```

For example, override `/sitemap.xml` for 10 minutes and then automatically revert
to the original headers:

```
/sitemap.xml|must-revalidate, no-cache, private|10
```

After the configured minutes elapse, the original headers are restored
automatically. You can also set a timed override from the command line with Drush:

```bash
drush occh:set-temp-headers "/sitemap.xml|must-revalidate, no-cache, private|10"
```

## Choosing header values safely

Common `Cache-Control` directives you'll use in these rules:

- **`public`** — any cache may store the response.
- **`private`** — only the user's own browser may store it; shared caches
  (proxies, CDNs) must not.
- **`no-cache`** — a cache must revalidate with the origin before serving a stored
  copy.
- **`no-store`** — nothing about the request or response may be stored anywhere.
- **`max-age=<seconds>`** — how long the response stays fresh.
- **`s-maxage=<seconds>`** — like `max-age` but only for shared caches.
- **`must-revalidate` / `proxy-revalidate`** — once stale, the response must be
  revalidated before reuse (the `proxy-` form applies only to shared caches).
- **`immutable`**, **`stale-while-revalidate=<seconds>`**,
  **`stale-if-error=<seconds>`** — finer‑grained freshness controls.

> **The important rule:** for any path that can return **user‑specific or private**
> content, never allow a shared cache to store it — use `private` (and typically
> `no-store` or `no-cache`), not `public`. A too‑permissive value here is how one
> user's page ends up served to another. When in doubt, err on the conservative
> side: that only costs performance, whereas the permissive mistake leaks data.

Click **Save configuration** to apply your rules.
