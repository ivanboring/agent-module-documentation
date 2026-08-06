<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Term Level (term_level) — agent index

Field type storing a **taxonomy term together with a level**. Package `Taxonomy`.
Version **8.x-1.1**. Core requirement `^9.1 || ^10 || ^11`.

**The modelling problem:** a tag is often not yes-or-no. Skills are technologies **with
proficiencies**; languages have **fluency**; prerequisites have **required levels**; certifications
have **grades**. A plain term reference loses the half people actually search on — *a directory that
finds everyone tagged "French" but not everyone fluent in it has not answered the question*.

**Why the alternatives fail:**
- **a term per combination** multiplies the vocabulary by the number of levels and makes *"any level
  of French"* unaskable;
- **two parallel fields** cannot express **which level belongs to which term** once there is more
  than one.

**Two things worth attaching:**
1. **The level scale should be a controlled, ordered list** — not free text or an arbitrary number.
   The value of the field is **comparison**: *"at least intermediate"* is a query, and it needs a
   shared scale.
2. **Self-assessed levels are self-assessed.** A skills directory built on them records **what people
   say about themselves** — useful, and not a qualification record. Anything consequential (a
   competency framework, a compliance register) needs **who assessed the level and when**.
