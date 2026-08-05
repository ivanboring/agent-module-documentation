<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Countdown provides a block that counts down to — or up from — a chosen moment, showing days, hours, minutes and seconds.

---

The whole module is one block plugin plus its assets: `src/Plugin` for the block, `templates/countdown.html.twig` for the markup, `js/lib` for the countdown library and `js/countdown.admin.js` with `css/countdown.admin.css` for the configuration form's own behaviour. Configuration lives in the block instance, validated by `config/schema`, so a placed countdown exports and imports with the rest of a site's configuration and several countdowns can coexist with different targets. Counting **up** from a past date is supported as well as down to a future one, which covers "days since" as well as "days until". The only dependency is core `block`, and the core range is a wide `^8.8 || ^9 || ^10 || ^11`. Two practical notes: the countdown runs in JavaScript on the client, so it reflects the visitor's clock rather than the server's and needs no cache-busting; and because it is a block, visibility conditions decide where it appears — pair it with something like `request_data_conditions` if the countdown should only show in certain contexts.

---

- Count down to a product launch.
- Show days remaining until an event.
- Count up from a project's start date.
- Display a registration deadline.
- Place a countdown in a page region.
- Show a countdown on selected pages only.
- Build anticipation for a campaign.
- Count down to a maintenance window.
- Show time remaining in a sale.
- Export a configured countdown with site config.
- Run several countdowns on one site.
- Theme the countdown with a Twig override.
- Show days since an anniversary.
- Add urgency to a donation appeal.
- Count down to a conference.
- Display a countdown in a sidebar.
- Support a site still on Drupal 9.
- Show a deadline without writing JavaScript.
