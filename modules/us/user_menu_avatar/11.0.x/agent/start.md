<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# User Menu Avatar (user_menu_avatar) — agent index

Replaces the user menu's login/account links with the user's **picture and/or name**. Depends on
core `user`. Core requirement `^10 || ^11` (version `11.0.0` tracks the core major, not semver).
Settings at `/admin/config/people/user-menu-avatar` (`administer site configuration`).

Key facts:
- Configuration-driven rather than theme code: picture, username, or both.
- Surface: `src/Form/UserMenuAvatarConfigurationForm.php`, `src/` menu alteration,
  `css/user-menu-avatar.css`, `config/install`, `config/schema`, `.install`, `.services.yml`.
- **Two things to check on adoption:**
  - what renders when a user has **no picture** — a missing image in a persistent menu is more
    conspicuous than one on a profile page;
  - whether the name shown is the **raw username**. On a site also running `user_display_name`
    (wave 64) to keep login identifiers out of public view, verify this module honours the display
    name rather than reintroducing the username into every page's header.
