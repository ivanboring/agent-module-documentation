<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# GSAP (gsap) — agent index

Integrates the GreenSock animation platform and exposes animations as **config entities**
editable in the admin UI. Core requirement `^9.2 || ^10 || ^11`.
Settings at `/admin/config/content/gsap`; entity collection at `/admin/structure/gsap`.

Key facts:
- **Loads from a third-party CDN by default.** Every one of the 23 entries in
  `gsap.libraries.yml` points at `https://cdn.jsdelivr.net/npm/gsap@3.13.0/dist/*.min.js`, with
  `preprocess: false`. Consequences to flag before deploying:
  - a strict CSP must allow `cdn.jsdelivr.net` as a script source;
  - the site will not animate offline or in an air-gapped environment;
  - visitor IPs are exposed to jsDelivr, which may matter for privacy review.
  - A `composer.libraries.json` is shipped that installs `greensock/gsap 3.13.0` locally as a
    `drupal-library`, **but `gsap.libraries.yml` does not reference it** — to go local you must
    override the library definitions (e.g. `hook_library_info_alter()` or a
    `libraries-override` in the theme).
- Config entity `gsap` with full CRUD, all behind the single permission **`administer gsap`**:

  | Route | Path |
  |---|---|
  | `gsap.settings` | `/admin/config/content/gsap` |
  | `entity.gsap.collection` | `/admin/structure/gsap` |
  | `entity.gsap.add_form` | `/admin/structure/gsap/add` |
  | `entity.gsap.edit_form` | `/admin/structure/gsap/{gsap}` |
  | `entity.gsap.delete_form` | `/admin/structure/gsap/{gsap}/delete` |

- `js/animations.js` consumes the entities through `core/drupalSettings` and depends on
  `gsap/gsap` + `gsap/scrolltrigger` — scroll-driven animation is the default assumption.
- Libraries available to attach individually: `gsap`, `flip`, `scrolltrigger`, `observer`,
  `scrollto`, `draggable`, `easel`, `motionpath`, `pixi`, `text`, `drawsvg`, `gsdevtools`,
  `inertia`, `motionpathhelper`, `morphsvg`, `physics2d`, `physicsprops`, `scrambletext`,
  `splittext`, `easepack`, `customease`, `custombounce`, `customwiggle`.
- Some of those plugins (MorphSVG, SplitText, DrawSVG, ScrambleText, Inertia, GSDevTools) are
  GreenSock's paid "Club" plugins — check licensing before relying on them, regardless of the
  CDN URL resolving.
