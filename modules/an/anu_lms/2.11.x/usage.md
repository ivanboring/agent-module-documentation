<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Anu LMS is a learning management system — courses, lessons, quizzes and progress — with a React front end fed by recursive REST endpoints.

---

It positions itself as "deceptively simple": a teacher creates a course, adds lessons with rich content and quizzes, and students work through them with progress tracked. Unlike LMS (documented in wave 84, built on Group), Anu takes the decoupled route — the learner experience is a JavaScript application consuming Drupal over REST, which is why it depends on `rest_entity_recursive` and `rest_paragraphs_recursive` to serialise a lesson and everything nested inside it in one request.

That recursive serialisation is the interesting design decision. A lesson is paragraphs inside paragraphs with media and quiz questions attached, and fetching it as separate JSON:API requests would mean a waterfall. Serialising the tree in one response is the right call for a learner UI that has to feel immediate.

**Its dependency `rest_entity_recursive` fatals on class load under Drupal 11.4, and this was verified.** `ReferenceItemNormalizer::normalize()` declares a return type of `array|string|int|float|bool|\ArrayObject|NULL` while core's `EntityReferenceFieldItemNormalizer::normalize()` declares `: array`. PHP return types are covariant — a child may narrow but never widen — so the class cannot be loaded:

```
Fatal error: Declaration of Drupal\rest_entity_recursive\Normalizer\ReferenceItemNormalizer::normalize(…): ArrayObject|array|string|int|float|bool|null
must be compatible with Drupal\serialization\Normalizer\EntityReferenceFieldItemNormalizer::normalize(…): array
```

The fatal appeared in a live response, and Drush went down with it; recovery required removing the modules from `core.extension` directly. This is the same signature-compatibility family seen in `views_better_rest`, `same_page_preview` and `push_notifications` in earlier waves — core narrowed a return type and the contrib override was left widened.

Anu LMS itself is not implicated; it is the dependency that fails. Check whether `rest_entity_recursive` has a release matching the core you are on before planning around this.

---

- Run online courses with a decoupled front end.
- Create lessons with rich content.
- Add quizzes to a lesson.
- Track student progress.
- Serialise a lesson tree in one request.
- Avoid a request waterfall in a learner UI.
- Compare with the Group-based LMS module.
- Check rest_entity_recursive against your core version.
- Diagnose a normalizer return-type fatal.
- Understand PHP return type covariance.
- Recover a site broken by a class-load fatal.
- Choose between decoupled and traditional LMS.
- Plan a teacher-facing authoring experience.
- Report the normalizer signature upstream.
- Evaluate Anu once its dependency is fixed.
