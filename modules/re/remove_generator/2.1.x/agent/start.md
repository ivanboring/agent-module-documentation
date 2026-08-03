# Remove Generator — agent index

Single-purpose module: removes core's `<meta name="Generator" content="Drupal …">` tag from every
page. **Nothing to configure** — no settings form (`configure` null), no permissions, no schema,
no dependencies, no Drush. Enable = tag gone; uninstall = core adds it back.

How it works (all of `remove_generator.module`):
```php
function remove_generator_page_attachments_alter(array &$attachments) {
  foreach ($attachments['#attached']['html_head'] as $key => $value) {
    if ($value[1] == 'system_meta_generator') {
      unset($attachments['#attached']['html_head'][$key]);
    }
  }
}
```
Only affects the HTML meta tag (`system_meta_generator`). It does **not** touch the `X-Generator`
HTTP header or other fingerprints. No solution docs are warranted beyond this note.
