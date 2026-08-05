<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Parameters lets a site define configuration objects with arbitrary properties — a named, typed, fielded settings container created without writing a settings form or a config schema.

---

Every project reaches the point where it needs somewhere to put a value: an API endpoint, a threshold, a feature flag, a set of business rules, a mapping table. The options are all more work than the value deserves. A settings form means a form class, a config schema, a route, a permission and a menu entry. `settings.php` means a deployment for every change and nothing an administrator can edit. A custom block or a node means content pretending to be configuration. Parameters gives the container directly, with `parameters_ui` for the interface and `parameters_content` for the content-side variant. Version **1.7.4** on core `^10.3 || ^11`. Two things to settle, and they are the same two that decide every "where does this value live" question. **Configuration or content** determines the deployment story: configuration exports, is reviewable in a diff and is overwritten by a config import — so an editor's production change is lost — while content survives deployment and is invisible in review. The two submodules suggest the module knows this is a choice; make it deliberately per value rather than once for everything. And **a schema is what makes configuration safe**: "arbitrary properties" is convenient and means a typo creates a new property rather than an error, nothing validates a value's type, and config import cannot check what it is importing — so the flexibility is real and so is what it removes.

---

- Store an API endpoint as configuration.
- Define a feature flag.
- Hold a business threshold value.
- Create a settings container without a form.
- Store a mapping table.
- Let administrators edit a value.
- Avoid writing a settings form class.
- Store per-environment values.
- Define a set of business rules.
- Hold a third-party identifier.
- Store a configurable limit.
- Define a lookup used by a module.
- Provide values to a Twig template.
- Store a schedule or cutoff.
- Define a rate or percentage.
- Keep a value out of settings.php.
- Store configuration a client can change.
- Define arbitrary site parameters.
