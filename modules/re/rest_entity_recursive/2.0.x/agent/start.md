<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# REST Entity Recursive (rest_entity_recursive) — agent index

Adds a **`json_recursive`** REST format serialising an entity plus everything it references.
Version **2.0.6-rc8**. Core `^8 || ^9 || ^10 || ^11`. Arrived here as an **`anu_lms`** dependency.

**Documented from source — fatals on class load under Drupal 11.4. Verified:**

```
Declaration of …ReferenceItemNormalizer::normalize(…): ArrayObject|array|string|int|float|bool|null
must be compatible with …EntityReferenceFieldItemNormalizer::normalize(…): array
```

PHP return types are **covariant** — a child may narrow, never widen. The class cannot load; the
fatal appeared in a live response and took Drush with it, needing a direct `core.extension` edit.

**Two design points that survive the fix**, applicable to any recursive serialiser: the depth limit
is a **correctness control**, not a tuning knob (a cyclic reference without one is an infinite
response); and **access is applied per entity as the tree is walked**, so a response can legitimately
contain some references and not others — a consumer assuming a complete tree will misbehave.