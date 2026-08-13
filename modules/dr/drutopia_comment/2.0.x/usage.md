<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Drutopia Comment is a Drutopia base feature module that provides comments and the related field/display configuration.

---

It is a *feature* module in the Drutopia distribution: it ships no PHP logic of its own, only default
configuration (a comment type, comment fields, and display/form settings) plus its module dependencies
(core `comment`, `field`, `node`, `rdf`, `text` and `drutopia_core`). Enabling it installs that bundled
config so a Drutopia site gets a consistent, ready-to-use commenting setup instead of hand-building it.

Operationally there is nothing to configure in code — you enable the module (usually pulled in by the
Drutopia install profile) and then manage comments through core's normal comment admin. It has no routes,
services, permissions or controllers of its own, so it carries no independent access surface; comment
visibility and posting are governed by core Comment permissions. Uninstalling removes the shipped config
per the distribution's config-management workflow (it composer-requires `drupal/config_actions`).

---

- Enable a ready-made comment configuration on a Drutopia site.
- Provide a default comment type wired to article/page content.
- Ship comment field + form/display defaults as exported config.
- Pull core Comment, Field, Node, RDF and Text in as dependencies.
- Give a Drutopia distribution consistent discussion settings out of the box.
- Serve as the config baseline other Drutopia features build on.
- Let editors moderate comments through core's comment admin UI.
- Grant/deny commenting via core Comment permissions per role.
- Add RDF markup metadata to comment output via the rdf dependency.
- Re-import default comment config after an accidental change.
- Act as an installable unit in a Drutopia composer/site build.
- Keep comment config in sync across multiple Drutopia sites.
- Depend on drutopia_core so shared components load first.
- Provide a starting point to override with site-specific comment config.
- Enable threaded discussion on nodes without manual field setup.
- Uninstall to cleanly remove the bundled comment configuration.
- Support Drupal 10.2, 11 and 12 core versions.
