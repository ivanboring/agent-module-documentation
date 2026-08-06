<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Deployment identifier status adds one check to Drupal's status report: whether `$settings['deployment_identifier']` is set, and a warning when it is not.

---

The deployment identifier is one of those settings that does nothing visible until it is missing. Drupal folds it into the container's cache key, so changing it on deploy guarantees that the service container, plugin definitions and other bootstrap-level caches are rebuilt for the new code — which is exactly what you want when a release changes a service definition or adds a plugin. Without it, a deployment can leave a stale container in place and produce failures that look random: a service that does not exist, a plugin that is not found, behaviour that reverts after a cache clear.

Most sites never set it, and nothing tells them. That is the entire gap this module fills — a `hook_requirements()` entry on `/admin/reports/status` so the omission is visible next to every other environment warning, where an ops team already looks.

It is about as small as a module gets: no routes, no permissions, no configuration, no `src/` directory. That is a virtue here — the check costs nothing and the failure mode it warns about is expensive to diagnose from symptoms.

Set the value in `settings.php` from something that changes per release — a git SHA, a build number, a timestamp injected by the pipeline — and the warning goes away.

---

- Warn when the deployment identifier is unset.
- Surface the omission on the status report.
- Prevent stale container caches after a deploy.
- Diagnose "service not found" errors after a release.
- Diagnose plugins that disappear after deployment.
- Add a deployment hygiene check to a site audit.
- Remind an ops team to set a per-release identifier.
- Standardise deployment settings across environments.
- Verify the identifier changes between releases.
- Include the check in a launch checklist.
- Explain why a cache clear "fixed" a deployment.
- Wire a git SHA into `settings.php` per release.
- Catch a pipeline that stopped injecting the identifier.
- Audit an inherited site's deployment setup.
- Confirm the identifier differs between environments.
- Add the check to a fleet-wide health baseline.
