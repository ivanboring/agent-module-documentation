<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Simple Klaro (simple_klaro) — agent index

Drupal integration for the **Klaro** consent manager. Library installed via
`composer.libraries.json` as `kiprotect/klaro` **v0.7.22** (local, not CDN).
Core requirement `^9.2 || ^10 || ^11`. Settings at `/admin/config/system/simple-klaro`.

Key facts:
- Two permissions, **both `restrict access: true`**:
  - `administer simple klaro` — the settings form;
  - **`bypass simple klaro`** — use the site with no consent gating. Grant deliberately: a
    bypassing user sees a page that is not what a visitor sees, so testing "does the tracker
    fire?" while holding it gives the wrong answer.
- `js/sanitize.js` is a **security control, not a helper**: it walks `a[data-href]`, parses the
  value with `new URL(value, origin)`, and rewrites the attribute to `#` unless the protocol is
  `http:` or `https:`. That is what stops a `javascript:` URL configured into a consent notice
  from executing. Do not remove it when overriding the library.
- Surface: `src/Form/SettingsForm.php`, `src/Plugin/Block/` (consent controls as a block),
  `js/klaro.drupal.js`, `js/editor.js`, `js/sanitize.js`, `config/install`, `config/schema`,
  `simple_klaro.install`.
- Consent gating works by neutralising script tags until opt-in, so any module that injects its
  own tracking script outside Klaro's control bypasses it. Cross-check anything that emits
  scripts directly — including `google_tag_events` (wave 57), whose anonymous tempstore cookie
  is set independently of consent.
