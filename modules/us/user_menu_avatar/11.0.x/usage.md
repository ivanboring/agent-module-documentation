<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
User Menu Avatar replaces the user menu's "Log in" and "My account" links with the visitor's profile picture and name, giving the account-menu treatment familiar from most modern applications.

---

Drupal's user menu shows text links: "Log in" when anonymous, "My account" and "Log out" when authenticated. Every consumer application instead shows the user's avatar as the account entry point, and matching that convention is a small change with a disproportionate effect on how finished a site feels. This module makes it configuration rather than theme code: a settings form at `/admin/config/people/user-menu-avatar` behind `administer site configuration` chooses whether to show the picture, the username, or both, with `src/` handling the menu alteration and `css/user-menu-avatar.css` supplying the styling. Dependencies are core `user` only, and the core requirement is `^10 || ^11` — the version number `11.0.0` tracks the core major rather than semantic versioning. One thing worth checking on adoption: what is shown when a user has no picture set, since a broken or missing image in a persistent menu is more conspicuous than one on a profile page, and whether the username shown is the raw username — relevant if the site also runs something like `user_display_name` (wave 64) to keep login identifiers out of public view.

---

- Show a profile picture in the user menu.
- Replace "My account" with an avatar.
- Match a modern application's account menu.
- Show the username alongside the avatar.
- Improve the finished feel of a site.
- Give an intranet a familiar account entry point.
- Show a default image for users without a picture.
- Style the avatar to match a theme.
- Configure display without theme code.
- Make the account menu more discoverable.
- Show the avatar in an admin toolbar context.
- Personalise the header for logged-in users.
- Distinguish logged-in from anonymous state visually.
- Support a community site's profile emphasis.
- Reduce theme overrides for a common need.
- Show only the picture on narrow screens.
- Reinforce identity on a members' site.
- Improve navigation to profile settings.
