<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Zodiac Style Plugin adds a Views style built on the Zodiac layout library, using Drupal's **breakpoint** system so a listing's grid responds to the theme's declared breakpoints rather than to hard-coded widths.

---

Views' own grid style takes a column count and applies it everywhere, which means a four-column grid is four columns on a phone unless the theme fixes it in CSS — and that fix lives in the theme, disconnected from the view. This plugin takes the breakpoint route instead: `src/Plugin` supplies the Views style, `config/schema` its settings, and the dependency on core `breakpoint` means the responsive behaviour comes from the breakpoints the theme already declares, so a listing and the rest of the site change shape at the same widths. Requirements are PHP 8.1+, core `breakpoint` and `views`, with the info file declaring `^10.1 || ^11` and composer `^10.3 || ^11` — the info file is what Drupal enforces. One thing to notice when reviewing the release: it ships a **`node_modules/` directory** in the tarball, which is unusual — it means unreviewed npm packages land in the web root, it inflates the deployed footprint, and it is worth excluding at deploy time.

---

- Render a view as a responsive grid.
- Tie a listing's columns to theme breakpoints.
- Avoid hard-coded column counts.
- Build a card grid from a view.
- Keep listing and page breakpoints aligned.
- Show a gallery grid that adapts.
- Configure columns per breakpoint.
- Replace Views' fixed grid style.
- Build a product listing grid.
- Support a responsive design system.
- Show search results in a grid.
- Adapt a team listing to screen width.
- Reduce theme CSS for listings.
- Reuse breakpoints already declared.
- Build a news grid.
- Support a mobile-first layout.
- Configure the style from the Views UI.
- Improve listing layout on tablets.
