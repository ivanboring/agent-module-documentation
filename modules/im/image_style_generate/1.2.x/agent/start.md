<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Image Style Generate (image_style_generate) — agent index

**Migrate source plugin that generates image style configuration.** Depends on core `image` and
`migrate`. Submodules `image_style_generate_example` and `..._example_advanced`.
Version **1.2.0**. Core requirement `^8.8 || ^9 || ^10 || ^11`.

**The problem:** styles multiply. Four breakpoints × three aspect ratios × two quality settings =
24 near-identical styles, each built through the same six-step form. Slow, and inconsistent in
ways nobody notices until a page looks wrong.

**Why the approach is interesting beyond image styles:** this is Migrate with a *definition* as the
source and **configuration** as the destination, rather than a legacy database → content. That
brings Migrate's machinery along — the definition is a **YAML file under version control**, the run
is **repeatable**, and **rollback** is supported rather than "delete 24 things by hand". The same
technique generalises to any config entity needed in bulk.

Generated styles are ordinary config entities afterwards — they export, deploy and get overridden
like any others.
