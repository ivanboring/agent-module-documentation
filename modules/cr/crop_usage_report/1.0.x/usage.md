<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Crop Usage Report finds media images that lack manually-applied crops, via UI and Drush.

---

Crop Usage Report audits media image entities and reports which ones are missing manually-applied crop types (useful when a site relies on the Crop/Image Widget Crop workflow and editors sometimes skip cropping). It provides an admin UI and a Drush command for the report.

Permissions cover viewing (`view crop usage report`) and administration (`administer crop usage report`). Depends on core `media`, `file`, and the `crop` module; requires Drupal 11.

---

- Report images missing manual crops.
- Audit media image entities.
- Find un-cropped media.
- Provide an admin UI.
- Provide a Drush command.
- Support Crop workflow QA.
- Gate viewing with `view crop usage report`.
- Gate admin with `administer crop usage report`.
- Depend on core `media` and `file`.
- Depend on the `crop` module.
- Require Drupal 11.
- Improve media consistency.
- List uncropped images.
- Support editorial QA.
- Run reports via Drush.
- Track crop coverage.
- Surface missing crop types.
- Help enforce cropping.
