<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# EPT Bootstrap Button (ept_bootstrap_button) — agent index

One paragraph type: a **Bootstrap-styled button**. Version **2.0.0**.
Core `^10.1 || ^11 || ^12`. Depends on `ept_core` and `paragraphs`.
No routes, permissions or config page.

Part of the **Extra Paragraph Types (EPT)** family — small modules that each add one ready-made
paragraph type and share configuration/styling via `ept_core`. Adopting one makes the others cheap.

**Assumes Bootstrap.** The emitted classes are Bootstrap's; on a non-Bootstrap theme the button
renders unstyled until those classes are given meaning. Check the theme before adding it.