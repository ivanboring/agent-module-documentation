<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# W3CSS Paragraphs (w3css_paragraphs) — agent index

**Twenty-three Paragraph bundles** on the W3.CSS framework, one submodule each. Depends on
`paragraphs`, core `block`, `field`, `file`, `filter`, `image`.
Core requirement `^9 || ^10 || ^11`.

Submodules by role:
- **layout** — `one_column`, `two_columns`, `three_columns`
- **display** — `card`, `hero`, `hero_full_width`, `image_overlay`, `responsive_image`, `parallax`, `content`
- **interaction** — `tabs`, `accordion`, `modal`, `slideshow`, `3d_carousel`, `3d_flip_box`
- **integration** — `block`, `custom_block`, `views`, `webform`, `menu`, `quicklinks`, `contact_form`

Key facts:
- **W3.CSS, not Bootstrap** — a small standalone CSS framework with **no jQuery and no JS
  dependency**. That is the distinguishing reason to choose this suite over the Bootstrap-based
  paragraph sets.
- Contrast the **EPT family** (`ept_text` wave 56, `ept_basic_button` wave 62): one project per
  component there, one project with 23 submodules here. Enable only what you need either way.
- **The companion theme is being renamed**: the module description says W3CSS Theme version 3 is
  becoming **"Solo"**. Check which theme generation a site is aligning with before adopting.
- **Composer requirements are unpinned** (`"*"` for `paragraphs`, `entity_reference_revisions`,
  `field_group`), so a `composer update` can move those further than intended. Pin them in the
  project's own composer.json.
- Configuration ships in `config/optional`, so bundles appear as their dependencies allow.
