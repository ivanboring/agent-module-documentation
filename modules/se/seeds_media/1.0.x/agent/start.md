<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Seeds Media (seeds_media) — agent index

Media layer of the **Seeds distribution** — pre-configured media types plus media-library
enhancements. Version **1.0.3**. Core `^10 || ^11`. Configure at `/admin/config/seeds-media`.
Contrib dependency: `media_library_edit` (edit a media item without leaving the library).

Much lighter than its sibling `seeds_editor` — 9 core modules + 1 contrib, vs 17.

**Permission to flag before enabling:** besides `administer seeds media` it defines
**`bypass default media access`**, which disables normal media access checks for whoever holds it.
Legitimate as a distribution escape hatch, but grant it to a named role deliberately — never bundle
it into a general editor role.