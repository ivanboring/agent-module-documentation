<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Deindex Unpublished Files (deindex_unpublished_files) — agent index

**Moves an unpublished media file from public:// to private://unpublishedfiles/** (restores on
publish) — real access protection, not just search deindexing. Version **1.0.10**.

**Positive (verified):** closes the Drupal gap where an unpublished media's public file stays
directly downloadable — on unpublish it moves the file to private storage (served through access
checks); `.ht_`-rename fallback where a private move isn't possible.

**Ops:** requires the **private:// stream configured**; the `.ht_` fallback depends on the server
honouring Drupal's `.htaccess` (Apache yes; nginx needs equivalent). Moving changes the URI — confirm
references resolve after a publish/unpublish cycle.