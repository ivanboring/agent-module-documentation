<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Edit + (edit_plus) — agent index

**Inline / in-place editing** of content on the front end (+ block/landing/layout building helpers; many
submodules). Depends on `tempstore_plus`, `twig_events`; Drush commands; provides permissions. Version
**2.3.3**. Core `^11`.

Content-editing/page-building — editing governed by its permissions **plus** underlying entity/field edit
access; verify inline editing isn't exposed to users lacking edit access.
