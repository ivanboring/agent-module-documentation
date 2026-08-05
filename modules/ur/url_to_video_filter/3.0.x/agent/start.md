<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# URL To Video Filter (url_to_video_filter) — agent index

One text filter converting bare YouTube/Vimeo URLs into embeds. No module dependencies, no
permissions, no routes, no Drush; settings live on the text format.

Key facts:
- Filter `#[Filter(id: "filter_url_to_video", title: "Convert URLs to embedded videos")]` →
  `Plugin\Filter\FilterUrlToVideo`.
- Settings (per text format), **all default to FALSE** in `defaultSettings()`:

  | Setting | Meaning |
  |---|---|
  | `youtube` | Recognise YouTube URLs |
  | `vimeo` | Recognise Vimeo URLs |
  | `youtube_webp_preview` | Render a WebP preview image instead of loading the player immediately |

  The settings **form** defaults show `youtube => TRUE`, `vimeo => TRUE`,
  `youtube_webp_preview => FALSE`, so a format configured through the UI gets both providers on;
  a format configured programmatically without settings gets neither. Set them explicitly.
- `settingsSummary()` prints `YouTube: On/Off`, `Vimeo: On/Off` on the format's filter list.
- Assets: `url_to_video_filter.libraries.yml`, `css/url_to_video_embed.css` (with `.scss` source
  and `.css.map`), and `images/no-js.png` for the no-JavaScript fallback.
- `url_to_video_filter.services.yml` registers the module's services.

Enabling on a format:

```bash
drush php:eval '
$f = \Drupal\filter\Entity\FilterFormat::load("basic_html");
$f->setFilterConfig("filter_url_to_video", [
  "status" => TRUE,
  "settings" => ["youtube" => TRUE, "vimeo" => TRUE, "youtube_webp_preview" => TRUE],
]);
$f->save();'
drush cr
```

Privacy note: with `youtube_webp_preview` on, the third-party player iframe is only loaded after
interaction — useful for cookie-consent compliance. With it off, the embed loads on page view.
