<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Decoupled Preview Iframe (decoupled_preview_iframe) — agent index

Embeds the decoupled front end's preview URL in an iframe on the node view page. No module
dependencies, no permissions of its own (settings use `administer site configuration`), no Drush;
config schema shipped.

Key facts:
- Route `decoupled_preview_iframe.settings` — `/admin/config/decoupled_preview_iframe/settings`
  (`Form\SettingsForm`, permission `administer site configuration`); `configure` points here.
- Config `decoupled_preview_iframe.settings` defaults:

  ```yaml
  redirect_anonymous: false
  redirect_url: ''
  preview_url: ''
  preview_types: []
  route_sync: 'DECOUPLED_PREVIEW_IFRAME_ROUTE_SYNC'
  draft_provider: 'none'
  ```

  `preview_url` empty and `preview_types: []` mean the module does nothing until configured.
- `hook_entity_view_alter()` replaces the build with the `preview-iframe.html.twig` template for
  entities whose bundle is in `preview_types`.
- `hook_form_node_preview_form_select_alter()` adjusts core's preview select bar so it behaves
  sensibly inside the iframe.
- `hook_theme()` registers the template; `decoupled_preview_iframe.libraries.yml` +
  `js/decoupled_preview_iframe.site.js` / `css/decoupled_preview_iframe.site.css` handle sizing
  and route syncing (the `route_sync` value is the token the JS looks for).
- `redirect_anonymous` + `redirect_url`: send anonymous visitors away from the Drupal node page
  (which on a headless site is editorial-only) instead of showing them the preview.

```bash
drush cset decoupled_preview_iframe.settings preview_url 'https://front.example.com/preview' -y
drush cset decoupled_preview_iframe.settings preview_types.0 article -y
drush cset decoupled_preview_iframe.settings draft_provider none -y
drush cr
```

Notes:
- The iframe loads a **third-party origin**; the front end must allow framing from the Drupal
  domain (`X-Frame-Options` / `frame-ancestors`) or the preview shows an empty box.
- Draft/unpublished previewing depends on `draft_provider` and the front end honouring whatever
  token scheme it implements — this module supplies the URL, not the authentication.
