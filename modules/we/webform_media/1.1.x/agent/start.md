<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Webform media (webform_media) — agent index

Adds a **media source** so a webform can be embedded as a media entity. Depends on core `media`
and `webform`.

**Requirements are unusually tight — check before recommending:**
- `php >= 8.3`
- core `^10.5 || ^11.2`
- **`drupal/webform ^6.2@beta`** — a beta constraint; composer will install a beta Webform to
  satisfy it. On a site pinned to stable Webform 6.1 or earlier this module cannot be installed
  without moving Webform onto a beta release.

Key facts:
- No routes, no permissions of its own — access is whatever Media and Webform already enforce.
  Surface is `src/Plugin/` (the media source), `src/Form/`, `config/schema`.
- The gain over the alternatives (webform block + visibility rules, `[webform:…]` token, a
  webform reference field) is that placement moves into the media library, so embedding uses
  CKEditor's media dialog, rendering uses a media view mode, and **media usage tracking can tell
  you where a form is embedded**.
- Ships `phpstan.neon` + `phpstan-baseline.neon` and `phpcs.xml` — actively linted upstream.
