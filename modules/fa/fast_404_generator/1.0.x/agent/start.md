<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Fast 404 Generator (fast_404_generator) — agent index

Renders a chosen node to a static **`public://404.html`** so **Fast 404** can serve a themed error
page without bootstrapping Drupal. Version **1.0.5**. Core `^10.1 || ^11`.
Depends on contrib `fast_404` (module name `fast404`). No routes, permissions or config page.

Requires a **settings.php** edit (from the README):

```php
$site_404 = DRUPAL_ROOT . '/' . $site_path . '/files/404.html';
$settings['fast404_HTML_error_page'] = file_exists($site_404) ? $site_404 : FALSE;
$settings['fast404_path_check'] = file_exists($site_404);
```

The `file_exists()` guards matter — without them Fast 404 points at a file that may not exist yet.

**Two things to plan for:**
- The file is a **snapshot**. Theme, menu or node changes do not propagate until it is regenerated
  — put regeneration in the deploy pipeline next to cache rebuilds.
- It lives in `public://`, so it is directly fetchable at `/sites/default/files/404.html`. The
  source node must contain nothing non-public.