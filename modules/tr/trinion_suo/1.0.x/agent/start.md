<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# TrinionCourse (trinion_suo) — agent index
**Online-course / LMS: courses, lessons, tests, progress tracking and purchase-driven access.**

- **Version:** 1.0.x
- **Core:** ^9 || ^10 || ^11
- **Depends:** comment, inline_entity_form, trinion_cart
- **Routes:** `/complete_lesson/{node}` (perm `access content`, bundle `urok_kursa`); `/node/{node}/course-structure` (perm `edit any kurs_obucheniya content`).
- **REST:** `mark_lesson_rest_resource` GET `/lesson-complete/{id}`; `subscription_rest_resource` POST `/subscribe`.
- **Services:** `trinion_suo.course` (structure/access/progress), student access-check `access_check.trinion_suo.is_student`, backend theme negotiator, Twig extension, `PaymentEvent` subscriber (grants access on payment).
- **Access:** lesson view via `hook_node_access` → `Course::checkLessonAccess()` (free lesson or `field_ts_course_access` match).

**Security:** Lesson access enforced per course purchase. Observations (reported, not fixed): `SubscriptionRestResource::post()` has its permission check commented out (relies only on REST config); `MarkLessonRestResource::get()` trusts an arbitrary `{id}` (self-scoped); `/complete_lesson` gated by `access content` (self-scoped mutation); `course_buy_notice` mail sends a plaintext password. No SQL injection (parameterized DB API).

See [api/lms.md](api/lms.md).
