<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
CL Devel provides development aids for people building Single Directory Components.

---

Component development has a feedback-loop problem: a component is defined in YAML with a schema, rendered by a Twig template, and consumed somewhere else, and when it does not appear the cause could be in any of the three. Development tooling that surfaces what the component system actually sees turns that from guesswork into reading.

This is part of the `cl_*` family that grew up around component development in Drupal before and alongside core's SDC.

**It is a development module** — `package` and purpose both say so — and belongs in the same category as `ckeditor5_dev` and `ignition`: fine locally, and something a production audit should be looking for. Development tooling that surfaces internals is exactly what `vitals_extra`'s dev-modules check exists to catch.

Worth knowing when planning: the component tooling landscape has moved quickly. Core SDC absorbed much of what the `cl_*` family and UI Patterns were built for, so on a new project the question is which layer you are actually building on before adding tools around it.

---

- Debug a component that does not render.
- See what the component system resolves.
- Inspect a component's schema.
- Shorten the component feedback loop.
- Develop Single Directory Components.
- Keep the module out of production.
- Audit production for development modules.
- Include it in a dev-modules check.
- Understand the cl_* family's context.
- Compare with core SDC tooling.
- Decide which component layer to build on.
- Teach a team component development.
- Diagnose a schema mismatch.
- Remove it before a release.
- Document this module's behaviour for the team.
- Review it during a site audit.
- Verify its assumptions after an upgrade.
