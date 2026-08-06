<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Deployment identifier status (dis) — agent index

One `hook_requirements()` check: warns on `/admin/reports/status` when
`$settings['deployment_identifier']` is not set. Version **1.1.0**.
Core `^9 || ^10 || ^11`. **No `src/`**, no routes, no permissions, no config.

Why it matters: the deployment identifier is part of the **container cache key**. Changing it per
release guarantees the service container and plugin definitions are rebuilt for the new code.
Unset, a deploy can leave a stale container and produce symptoms that look random — "service does
not exist", "plugin not found", behaviour that reverts after a cache clear.

Fix the warning by setting it in `settings.php` from something that changes per release (git SHA,
build number, pipeline timestamp).