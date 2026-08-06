<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Anu LMS (anu_lms) — agent index

Learning management system with a **React front end** over recursive REST — courses, lessons,
quizzes, progress. Version **2.11.2**. Core `^10 || ^11`.
Depends on `rest_entity_recursive` and `rest_paragraphs_recursive` to serialise a lesson tree in
one response.

Contrast with **`lms`** (wave 84), which is Group-based and traditional. Anu is decoupled; the
recursive serialisation exists so a learner UI does not do a request waterfall through nested
paragraphs.

**Documented from source — its dependency fatals on Drupal 11.4. Verified:**

```
Declaration of …rest_entity_recursive\Normalizer\ReferenceItemNormalizer::normalize(…):
ArrayObject|array|string|int|float|bool|null must be compatible with
…serialization\Normalizer\EntityReferenceFieldItemNormalizer::normalize(…): array
```

PHP return types are **covariant** — a child may narrow, never widen. The class cannot load; the
fatal appeared in a live response and took Drush with it, needing a direct `core.extension` edit.

Same family as `views_better_rest`, `same_page_preview`, `push_notifications`. **Anu itself is not
implicated** — check `rest_entity_recursive` for a release matching your core.