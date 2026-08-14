<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Drutopia User (drutopia_user) — agent index

**Config-only base feature providing default/compact user view displays and the default user form display.**

- **Version:** 2.0.x (dev branch `2.0.x`; no tagged release in checkout)
- **Core:** ^10.2 || ^11 || ^12
- **Provides:** `core.entity_view_display.user.user.default`, `...user.user.compact`, `core.entity_form_display.user.user.default`.
- **Deps:** core field, file, image, path, user. No PHP, routes, services, or permissions.

**Security:** Config-only; no routes, services, or endpoints. No anonymous or mutating code paths. No security findings.
