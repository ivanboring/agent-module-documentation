<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Commerce Kickstart Demo Assets (commerce_kickstart_demo_assets) — agent index

JavaScript, Twig templates and other files used by the **Commerce Kickstart Demo recipe**.
No dependencies, no routes, no permissions. Version **1.0.0**.
**Core requirement `^11` — Drupal 11 only.**

**Not something to install directly.** It arrives as a dependency when the Kickstart demo recipe is
applied.

**Why it exists as a module at all:** a **recipe** applies configuration and content, but cannot
ship a JS file or a Twig template — those must come from a module. This is that module.

Context worth having: Commerce Kickstart was a **distribution** in Drupal 7. Distributions fit
poorly with how Drupal is assembled now; core **recipes** replace them, applying configuration to
an existing site rather than dictating how it was built.

**Plan removal at install time.** Demo content and assets on a live site are clutter at best and a
source of confusion about what is real at worst — and **a recipe does not uninstall**, so unpicking
what it applied is manual work.
