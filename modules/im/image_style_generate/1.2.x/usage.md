<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Image Style Generate provides a Migrate source plugin that produces image style configuration, so a large matrix of styles is generated from a definition instead of clicked into existence one at a time.

---

Image styles multiply. A design system with four breakpoints, three aspect ratios and two quality settings implies twenty-four styles, each identical to its neighbours except for two numbers, each created through the same six-step form. Doing that by hand is slow and — worse — inconsistent, because the twenty-fourth will differ from the first in some way nobody notices until a page looks wrong. This module treats style creation as a migration: define the dimensions, let Migrate generate the configuration. That brings the rest of Migrate's machinery with it — the definition lives in a YAML file under version control, the run is repeatable, and rolling back is a supported operation rather than deleting twenty-four things by hand. Two example submodules, basic and advanced, show the shape. Version **1.2.0** on `^8.8` through `^11`, depending on core `image` and `migrate`. It is an unusual application of Migrate — the source is a definition rather than a legacy database, and the destination is **configuration** rather than content — which is exactly why it is worth knowing about: the same technique generalises to any configuration entity that needs to exist in bulk. The thing to remember afterwards is that generated styles are ordinary config entities, so they export, deploy and get overridden like any others.

---

- Generate a matrix of image styles.
- Create styles for four breakpoints.
- Avoid clicking through the style form.
- Keep image styles in version control.
- Generate responsive style sets.
- Ensure consistent style naming.
- Roll back generated styles.
- Reproduce styles across environments.
- Support a design system's breakpoints.
- Generate styles per aspect ratio.
- Reduce manual configuration work.
- Regenerate styles after a design change.
- Standardise crop settings.
- Create styles for a media library.
- Generate WebP variants systematically.
- Document styles as a definition file.
- Support a large image style estate.
- Learn a config-generation Migrate pattern.
