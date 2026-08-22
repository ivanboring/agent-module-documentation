# Entity Inherit — manual setup guide

**Entity Inherit** (`entity_inherit`) lets one entity **inherit certain field
values from a "parent" entity**, and keeps those values in sync as the parent
changes. The classic example: a "School" entity inherits a "Covid‑19 policy" field
from a district entity, so updating the policy in one place flows out to every
school that points at it — without changing your data model.

You tell the module which field(s) define an entity's parent — typically an
entity‑reference field such as `field_entity_inherit_parent`. Then, every time any
entity is saved, the module compares it against its parents and children and
propagates values in two situations: when a **parent's field changes** and a child
previously held the same value, the child is updated to the new value; and when an
entity **gains a new parent reference**, its empty fields that also exist on the
parent are filled in from the parent. For a field to inherit, parent and child must
share the **same field name**. Large propagations are handled through a queue, so
updating a parent with many children doesn't stall the save.

Because values are simply recomputed on save, you can **disable or uninstall the
module at any time without losing data** — the inherited values are stored on the
entities like any other. The module is also extensible through a plugin system for
custom inheritance behavior.

**Please read this before enabling it.** By design, Entity Inherit does **not**
check access or permissions when it propagates. If a user can edit a *parent*
entity, the new value flows to *child* entities they may have no permission to
edit; and editing a child to point at a parent can pull in parent content the user
may not be allowed to view. It also does not detect **infinite loops** — a circular
parent graph (A inherits from B, B inherits from A) will cause errors. Both are the
site builder's responsibility to contain: restrict which fields are used as parent
fields, control who can edit parent entities, and avoid circular parent
relationships.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install the module with Composer and
   enable it.
2. [Configuration](configuration/index.md) — register which field(s) mark an
   entity's parent, and understand how propagation behaves.

## Where it lives in the admin menu

The settings form is at `/admin/config/entity_inherit`
(route `entity_inherit.admin_settings_form`). It is gated by the core **Access
administration pages** permission — a relatively low bar for a setting with
cross‑entity write consequences, so grant it carefully.
