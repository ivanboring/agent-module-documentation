<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Fast 404 Generator writes a `404.html` file into the public files directory, rendered from a node you choose, so the Fast 404 module can serve a themed error page without bootstrapping Drupal.

---

Fast 404 exists because a missing image or a bot probing for `/wp-admin` should not cost a full Drupal bootstrap. It intercepts those requests early and returns a static response. The catch is that the static response it ships looks nothing like the site — plain text on a white page — and the alternative, letting Drupal render a real 404 node, gives up the performance the module was installed for.

This module resolves that by rendering the node once and saving the result as HTML. The generated file keeps the site's styles, menus and markup, so visitors get a page that looks like the site, served without touching PHP.

Wiring it up is a settings.php edit, and the README is explicit about it:

```php
$site_404 = DRUPAL_ROOT . '/' . $site_path . '/files/404.html';
$settings['fast404_HTML_error_page'] = file_exists($site_404) ? $site_404 : FALSE;
$settings['fast404_path_check'] = file_exists($site_404);
```

The `file_exists()` guards are the important part: if the file has not been generated yet, Fast 404 falls back rather than serving a broken path.

The thing to plan for is staleness. The generated file is a snapshot — change the theme, the menu or the node and the 404 page keeps the old markup until it is regenerated. Regeneration belongs in the deployment pipeline alongside cache rebuilds, not in someone's memory. And because the file is written into `public://`, it is directly fetchable at `/sites/default/files/404.html`, so it should contain nothing that is not already public.

---

- Serve a themed 404 without bootstrapping Drupal.
- Keep site styles on the error page.
- Keep the menu on the error page.
- Render a 404 page from a node.
- Pair a static error page with Fast 404.
- Avoid a plain-text error page.
- Avoid a full bootstrap for missing files.
- Add the settings.php snippet from the README.
- Guard the settings with file_exists().
- Regenerate the file after a theme change.
- Regenerate the file after a menu change.
- Add regeneration to the deployment pipeline.
- Keep private content out of the 404 node.
- Check the generated file at /sites/default/files/404.html.
- Reduce load from bot probing.
- Reduce load from missing images.