# Entity Template — manual setup guide

**Entity Template** (`entity_template`) lets you create entities from **reusable
templates**. An administrator defines a "builder" with one or more template
blueprints — including tokenised values driven by parameters — and a build UI then
walks a user through choosing parameters, selecting a blueprint, and landing on an
entity edit form that is pre‑filled from the template. It's a fast way to stamp out
new content that follows a consistent shape.

Think of it as a blueprint system for content: define the skeleton once, with
tokens for the bits that vary, and produce new entities from it on demand rather
than copying an existing one by hand each time. It depends on the contributed
**Typed Data** (`typed_data`) module and supports Drupal 9.1+, 10 and 11.

> **Security warning — do not use this on a public site until you harden it.** As
> shipped (version 1.0.0‑alpha15), all of the build routes under
> `/entity_template/build/*` are declared with `_access: 'TRUE'`, meaning they are
> reachable by **anyone, including anonymous visitors**, and the final edit step
> renders a normal entity form **without a create‑access check**. In practice, once
> any builder is configured, an anonymous visitor could create entities of the
> configured type without permission. Before exposing this module on a public or
> production site, gate the build routes with a real permission or an
> `_entity_create_access` requirement.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install with Composer, enable the
   module and its Typed Data dependency.
2. [Configuration](configuration/index.md) — defining builders and blueprints, and
   the essential hardening step.

## Where it lives in the admin menu

Builders and their template blueprints are defined through the module's admin UI.
The build flow that creates entities from a template lives under
`/entity_template/build/*` — the routes you must lock down before going live (see
[Configuration](configuration/index.md)).
