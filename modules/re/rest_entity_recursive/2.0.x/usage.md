<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
REST Entity Recursive adds a `json_recursive` format that serialises an entity together with everything it references, to whatever depth is configured.

---

Drupal's default REST serialisation gives you an entity and references as targets — ids you have to fetch separately. For a page built from nested paragraphs with media inside them, that is a request waterfall: fetch the node, discover four paragraphs, fetch them, discover their media, fetch that. A front end doing this is slow in exactly the way a decoupled build is supposed to avoid.

A recursive format inlines the tree. One request, everything the consumer needs, with a depth limit to stop it from following references forever.

**This release fatals on class load under Drupal 11.4, and it was verified.** `ReferenceItemNormalizer::normalize()` declares a return type of `array|string|int|float|bool|\ArrayObject|NULL` while core's `EntityReferenceFieldItemNormalizer::normalize()` declares `: array`. PHP return types are covariant — a child may narrow but never widen — so the class cannot be loaded at all:

```
Fatal error: Declaration of Drupal\rest_entity_recursive\Normalizer\ReferenceItemNormalizer::normalize(…)
must be compatible with Drupal\serialization\Normalizer\EntityReferenceFieldItemNormalizer::normalize(…): array
```

The fatal appeared in a live response and took Drush with it; recovery required removing the module from `core.extension` directly. It arrived here as a dependency of `anu_lms`.

**Two design points worth carrying even once the signature is fixed**, because they apply to any recursive serialiser. The depth limit is a correctness control, not a tuning knob — a cyclic reference without one is an infinite response. And **access is applied per entity as the tree is walked**, so a recursive response can legitimately contain some referenced entities and not others; a consumer that assumes a complete tree will misbehave when part of it is filtered out.

---

- Fetch an entity and its references in one request.
- Avoid a request waterfall in a front end.
- Serialise nested paragraphs with their media.
- Set a depth limit for recursion.
- Prevent an infinite response from a cycle.
- Handle a tree partially filtered by access.
- Check the module against your core version.
- Diagnose a normalizer return-type fatal.
- Understand PHP return type covariance.
- Recover a site after a class-load fatal.
- Feed a decoupled front end efficiently.
- Compare with JSON:API includes.
- Report the signature upstream.
- Evaluate it once the return type is fixed.
- Plan serialisation for a nested content model.
