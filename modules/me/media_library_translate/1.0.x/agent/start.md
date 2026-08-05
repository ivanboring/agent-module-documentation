<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Media Library Translate (media_library_translate) — agent index

Adds a **translate** button to the selected item in the Media Library widget. Depends on core
`media`, `media_library` and `content_translation`. Core requirement `^9 || ^10 || ^11`.

Key facts:
- **No `src/` directory at all** — the module is `media_library_translate.module`, one JS file,
  one stylesheet, one SVG icon and a libraries file. No routes, permissions or configuration.
- It is a **shortcut to the existing translation UI**, not a new translation mechanism. Access,
  workflow and storage are all core's `content_translation`. That makes it cheap to adopt and
  cheap to remove.
- The problem it addresses is behavioural: media metadata (alt text especially) lives on the media
  entity, so translating it means leaving the node form. Enough friction that in practice it does
  not happen — which is why multilingual sites so often carry one language's alt text everywhere.
- Accessibility relevance: untranslated alt text is a real barrier for screen-reader users on the
  non-default language, so this is more than editorial tidiness.
