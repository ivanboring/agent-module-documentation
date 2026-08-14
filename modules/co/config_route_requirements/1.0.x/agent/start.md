<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Config Route Requirements (config_route_requirements) — agent index

**Provides a `_config` route requirement that removes routes whose config evaluates false.**

- **Version:** 1.0.x  **Core:** ^10 || ^11
- **Mechanism:** `src/EventSubscriber/ConfigRouteSubscriber.php` (`RouteSubscriberBase::alterRoutes`) removes any route with a failing `_config` requirement at route-rebuild time.
- **Usage:** `requirements: { _config: 'module.settings:key' }` in a `*.routing.yml`; `drush cr` to apply.
- **No routes, permissions, services, or UI of its own.**
- **Security:** build-time route removal (404 when disabled), not a runtime access grant — does not itself expose anything; author still sets normal `_permission`/`_access` on the route.
