# Computed relationships — manual setup guide

**Computed relationships** (`computed_relationships`) lets you define
relationships between content entities using **computed reference fields** — 
fields whose target entities are derived at runtime by a rule, rather than stored
values you maintain by hand. Imagine you need a set of related entities attached
whenever any node of a content type is requested: normally you would add an
entity_reference field with default values and hope they stay in sync. With
Computed relationships you just declare the dependency between the entities once,
and the fields are created and populated automatically. **JSON:API is
supported**, and if `jsonapi_extras` is present its configuration for these
computed fields is set up automatically when the relevant configuration already
exists.

The relationships are defined at entity level, with a later step to choose in
which bundles of the selected entity the fields should appear. Once the module is
active, you simply start defining the relationships you want represented alongside
each entity. It depends on core's **Field** module, provides its own permission,
and supports Drupal 9, 10, and 11.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install with Composer and enable the
   module.

There is **no traditional settings form** to fill in first — after enabling, you
define computed relationships directly and then choose the bundles they apply to,
as described under "How to use it" below.

## Where it lives in the admin menu

Computed relationships adds no standalone settings page of its own. After
enabling it, you define the relationships between entities and pick the bundles in
which each computed field should be shown; the fields are then created
automatically and appear on those bundles. Grant the module's permission at
**People → Permissions** to the roles that should manage relationships.

## How to use it

1. Enable the module (see [Installation](installation/index.md)).
2. **Define a relationship** between the entities you want linked — for example,
   "attach these entities whenever a node of this content type is requested."
3. **Choose the bundles** of the selected entity where the computed field should
   appear.
4. The reference field is created and populated automatically at runtime; if you
   use JSON:API (optionally with `jsonapi_extras`), the relationship is exposed
   there as well.
