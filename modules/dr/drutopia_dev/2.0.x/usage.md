<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Drutopia Dev is a convenience meta-module for people developing or extending a Drutopia site.

---

It has no code of its own beyond a `features.yml` marker; its job is to declare dependencies that assemble a developer/feature-builder toolkit — Devel plus Entity Clone alongside the broad Drutopia feature set (article, blog, campaign, comment, core, event, group, home page, landing page, page, people, related content, resource, search, SEO, site, social, storyline, user). Enabling it ensures a consistent development environment with the tools Drutopia contributors expect, and it is intended for dev/staging rather than production.

There are no routes, permissions, or services introduced by this module — its security surface is entirely that of the modules it depends on (notably Devel and Entity Clone, which are powerful and should not be enabled on production). Setup: enable on a development environment to bring in the toolkit; disable/uninstall before deploying to production.

---
- Set up a Drutopia development environment in one enable.
- Pull in Devel for debugging on a Drutopia site.
- Add Entity Clone for duplicating content while building.
- Ensure the full Drutopia feature set is present for testing.
- Standardize the dev toolkit across a Drutopia team.
- Keep dev-only modules grouped behind one meta-module.
- Uninstall a single module to strip dev tools before release.
- Bootstrap a features-building workflow.
- Provide contributors a known-good module baseline.
- Avoid enabling dev tools piecemeal.
- Pair with drutopia_core configuration.
- Enable search_api/search feature testing in dev.
- Clone example content quickly during development.
- Inspect entities/tokens via Devel.
- Exclude from production module lists.
- Document the intended dev-only scope.
- Include the `drutopia_dev_findit` submodule if needed.
- Reproduce a standard Drutopia dev stack on a new machine.
