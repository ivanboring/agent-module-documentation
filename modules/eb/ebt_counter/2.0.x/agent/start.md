<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Extra Block Types (EBT): Counter (ebt_counter) — agent index

**Provides an `ebt_counter` custom block type that renders animated number counters (CountUp.js) plus an optional WYSIWYG body.**

- **Version:** 2.0.x
- **Core:** ^10.1 || ^11 || ^12
- **Depends on:** ebt_core, paragraphs
- **Block type:** `ebt_counter`; items are `ebt_counter_item` paragraphs (number/title/description/icon).
- **Fields:** `field_ebt_counter_items` (paragraphs), `field_ebt_settings` (EBT design + CountUp.js options), body.
- **Widget:** `ebt_settings_counter` adds 2/3/4-column layout + CountUp.js options (startVal, decimals, duration, separators, prefix/suffix).
- **Library:** `ebt_counter/countup` loads CountUp.js from `/libraries/count-up.js` + `js/countup.js`, initialized via `core/once`.
- **Routes/permissions/services:** none (autowired `EbtCounterHooks` for hook_help/hook_theme only).

**Security:** display-only block type; no routes, no permissions, no request handling, no mutating endpoints.
