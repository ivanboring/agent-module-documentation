<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# VVJ Core (vvj_core) — agent index

Foundation module for the **VVJ Views renderer family**. Requires core `views` + `filter`,
PHP **8.3**, core `^11.3 || ^12`. No routes, no permissions, no config schema of its own.

> **Not useful on its own.** It provides the abstract Views style base, shared services, the JS
> custom-element base and the CSS contract that the pattern modules consume. Composer installs it
> automatically when you require any `drupal/vvj*` module.

The family (each supplies one Views display format):

| Module | Format |
|---|---|
| `vvja` | Accordion |
| `vvjb` | Basic carousel |
| `vvjc` | 3D carousel |
| `vvjf` | 3D flip box |
| `vvjh` | Hero |
| `vvjl` | Lightbox |
| `vvjp` | Parallax |
| `vvjr` | Reveal |
| `vvjs` | Slideshow |
| `vvjt` | Tabs |

Key facts:
- `vvj_core.services.yml` registers `vvj_core.twig_extension`
  (`Drupal\vvj_core\Twig\VvjCoreTwigExtension`) — exposes the **`safe_html`** Twig filter to
  every VVJ template.
- `drush.services.yml` registers the module's Drush commands.
- `vvj_core.libraries.yml` holds the shared CSS/JS, including the custom-element base the pattern
  widgets extend.
- Pattern modules extend the abstract Views style plugin provided here; follow an existing `vvj*`
  module as the template when writing your own.

```bash
composer require drupal/vvjs   # pulls vvj_core automatically
drush en vvjs -y               # vvj_core is enabled as a dependency
```
