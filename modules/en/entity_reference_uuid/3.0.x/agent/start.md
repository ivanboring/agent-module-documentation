<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Entity Reference UUID (entity_reference_uuid) — agent index

Stores an entity reference by the target's **UUID** rather than its numeric entity ID.
Version **3.0.1**. **Core requirement `^11.1` — Drupal 11.1+ only**, tight.

**Why entity IDs are the problem:** node 42 on production and node 42 on staging are **different
nodes**, and the number carries no meaning between installations. That breaks the moment content
moves — a migration renumbers everything, a content deployment carries references pointing at IDs
that mean something else on the target, a default-content export references nodes that do not exist
yet, a multisite sharing content has no stable way to name anything. **A UUID is generated once and
travels with the entity.**

**Three things worth knowing:**
1. **UUID lookups cost more than ID lookups** — a 36-character string rather than an indexed
   integer. A reference resolved per row in a large listing is measurably slower. That is the trade
   for portability.
2. **The target may not exist yet** — which is the point during a deployment, and means rendering
   must **tolerate an unresolvable reference** rather than erroring.
3. **Core already uses UUIDs for exactly this** in `default_content` and config entity dependencies.
   The pattern is established; this makes it available to ordinary content fields.
