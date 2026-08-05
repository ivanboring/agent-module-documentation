<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Imagefield Default Alt And Title fills empty image alt and title attributes from the host entity's title, and can backfill existing content in a batch.

---

Empty alt text is the most common accessibility failure on content-managed sites, and the reason is workflow: an editor adding six images to an article will not write six descriptions. There are two ways to attack that. `auto_alter` (wave 64) generates a description from the image itself using a vision service, which costs money per image and produces a draft describing what is *in* the picture. This module takes the cheaper, cruder route — use the entity's title as a default — which requires no service, no cost and no network call, and produces something contextual rather than descriptive. Both are imperfect, and the honest framing is that a title-derived alt is better than nothing and worse than a written description: it conveys *what the image belongs to* rather than *what it shows*, which for an illustrative photograph accompanying an article is often adequate and for an informational diagram is not. The batch form is the part that earns its place, letting an existing site with thousands of empty alt attributes be filled in one operation rather than image by image. Settings sit at `/admin/config/search/imagefield-default-alt-and-title` under `administer site configuration`, with PHP 8.1+ and core `^10.3 || ^11`.

---

- Fill empty alt text from the node title.
- Backfill alt attributes across existing content.
- Reduce empty alt attributes site-wide.
- Improve an accessibility audit score.
- Provide a default before editors write one.
- Set the title attribute automatically.
- Run a batch over a legacy image library.
- Reduce accessibility remediation effort.
- Give imported images a default description.
- Support an accessibility improvement programme.
- Fill alt text after a migration.
- Avoid per-image manual entry.
- Improve image SEO cheaply.
- Provide a baseline before AI description.
- Fix images added without alt text.
- Apply defaults per field.
- Reduce the count of accessibility errors.
- Handle a bulk content import.
