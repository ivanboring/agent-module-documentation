<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# JSON:API Basic Site Settings (jsonapi_site) — agent index

Exposes `system.site` and theme settings at **`/jsonapi/site/site`**. Depends on core `jsonapi`
and **`key_auth`**. Core requirement `^9 || ^10 || ^11`.

```yaml
jsonapi_site.basic_settings:
  path: '/jsonapi/site/site'
  options: { _auth: ['key_auth'] }
  methods: ['GET']
  requirements:
    _user_is_logged_in: 'TRUE'
```

**Access is "any authenticated user", not a permission.** On a site with open registration, anyone
who signs up can read it. What the response contains:

| Exposed | Note |
|---|---|
| name, slogan, `page.front`, `page.403`, `page.404`, default langcode, default/admin theme, logo and favicon paths | mostly public already |
| **`system.site` `mail`** | the site's configured email address |
| **`system.site` `uuid`** | the site UUID used in config-sync identity |

Neither of the last two is a credential, but neither is normally published to every registered
account. If that matters, gate it behind a permission or strip them with
**`hook_jsonapi_site_data_alter()`** — the module documents that hook in `jsonapi_site.api.php`,
and it is also the way to add custom values.

Key facts:
- Whole module: `src/Controller/JsonapiSiteController.php`, routing, `jsonapi_site.api.php`.
- `key_auth` is a hard dependency — it is how a non-browser client authenticates.
