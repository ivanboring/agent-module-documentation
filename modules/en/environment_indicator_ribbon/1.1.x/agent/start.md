<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Environment indicator ribbon (environment_indicator_ribbon) — agent index

A thin visual add-on to **`environment_indicator`**. It draws a **diagonal corner ribbon**,
fixed to the bottom-left of the viewport, naming the current environment (dev / stage / prod).
It reuses environment_indicator's configured name and colours — it defines **no settings, config
schema, or Drush command of its own**. Version **1.1.0**, core `^9 || ^10 || ^11`, requires
`drupal/environment_indicator: ^4`.

## Exact mechanism (whole module is one hook + one library)

`environment_indicator_ribbon.module` implements only **`hook_page_attachments()`**:
1. Returns early unless the current user has the **`access environment indicator ribbon`**
   permission (`environment_indicator_ribbon.permissions.yml`).
2. Reads `environment_indicator.indicator` config — `name`, `fg_color`, `bg_color` (the same
   values the environment_indicator settings form stores; this module owns none of them).
3. Pushes those into `drupalSettings.environment_indicator_ribbon`
   (`{name, fgColor, bgColor}`) and attaches the
   `environment_indicator_ribbon/environment_indicator_ribbon` library.

The library (`.libraries.yml`) ships:
- **`css/environment_indicator_ribbon.css`** — one rule, `.environment-indicator-ribbon`:
  `position: fixed`, `left: 55px; bottom: 55px`, `transform: rotate(45deg) …`, uppercase
  letter-spaced text, drop shadow, `z-index: 1500`, `pointer-events: none`.
- **`js/environment_indicator_ribbon.js`** — `Drupal.behaviors.environmentIndicatorRibbon`;
  using `once('environmentIndicatorRibbon', 'body')` it appends a single
  `<div class="environment-indicator-ribbon" style="background-color:…;color:…">NAME</div>`
  to `body`, with the colours inline and the environment name as its text.
- dependencies: `core/drupal`, `core/jquery`, `core/drupalSettings`, `core/once`.

## Configuration

There is **no UI in this module**. `configure` in the `.info.yml` points at
`environment_indicator.settings` — the base module's form. Set the environment **name** and the
foreground/background **colours** there. For the ribbon to be correct **per environment**, that
name/colour must resolve per environment (e.g. a `settings.php` override of
`environment_indicator.indicator` keyed off an environment variable or hostname), not be shipped
as identical exported config across all environments.

## Practical notes

- The ribbon appears for any role granted `access environment indicator ribbon`; grant it to the
  roles that should see the marker.
- It renders on every page (front-end included), independent of the admin toolbar, so it stays
  visible where environment_indicator's toolbar bar is not.
- The name is inside the ribbon text, so it works as a cue even without colour perception.
- If nothing shows: confirm `environment_indicator.indicator` has a non-empty `name`, the user
  has the permission, and the page is not served from a cached response predating enablement.
