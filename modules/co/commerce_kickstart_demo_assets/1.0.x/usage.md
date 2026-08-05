<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Commerce Kickstart Demo Assets ships the JavaScript, templates and other files used by the Commerce Kickstart Demo recipe — a supporting package rather than something to install on its own.

---

Commerce Kickstart was a full distribution in Drupal 7: install it and get a working store to learn from or start with. Distributions turned out to be a poor fit for the way Drupal is now assembled, and core's **recipes** replace them — a recipe applies configuration and content to an existing site instead of dictating how that site was built, so a store can be demonstrated without owning the whole installation. A recipe applies configuration, though, and cannot ship a JavaScript file or a Twig template; those must come from a module. That is what this is. Version **1.0.0**, core requirement **`^11`** — Drupal 11 only, which is consistent with a package built for the recipe system. Nothing here is meant to be chosen directly: it arrives as a dependency when the Kickstart demo recipe is applied, and the demo itself is for **evaluation and learning**, not for a production storefront. Demo content and demo assets on a live site are at best clutter and at worst a source of confusion about what is real, so plan the removal at the same time as the installation — which is easier said than done, since a recipe does not uninstall, and unpicking what it applied is manual work.

---

- Support the Commerce Kickstart demo recipe.
- Evaluate Drupal Commerce quickly.
- Learn from a worked store example.
- Demonstrate Commerce to a client.
- Provide templates to a demo recipe.
- Set up a training environment.
- Explore Commerce configuration.
- Show a working storefront.
- Provide assets a recipe cannot ship.
- Build a sandbox store.
- Prepare a Commerce workshop.
- Compare Commerce with alternatives.
- Test a Commerce upgrade path.
- Show product display options.
- Demonstrate a cart and checkout flow.
- Provide reference configuration.
- Support a proof of concept.
- Learn the recipe system by example.
