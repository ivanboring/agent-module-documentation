<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
LMS provides the core of a learning management system in Drupal: courses containing lessons containing activities, students submitting answers, and progress tracked per learner — built on the Group module.

---

Choosing Group as the foundation is the design decision that shapes everything else. A course is a group, enrolment is membership, and the permission model that follows is Group's: who may see a course, who may take it, who may edit it and who may see other people's answers are all questions Group already answers, per course rather than site-wide. That is what separates a real LMS from a content type called "Course" — a site can run a hundred courses with different instructors and different cohorts without a bespoke access layer.

The content model is entity-based throughout: `lms_activity` entities are the units of work, answers are entities too, and progress is derived from them. The permission list reflects that granularity — `administer lms` (`restrict access: true`), plus create/use permissions per entity type with sensible defaults noted in their descriptions ("also grants access to view / edit own activities by default").

Three submodules ship with it:

- **`lms_answer_plugins`** — the basic Activity/Answer plugin set, i.e. the question types. This is the extension point for a custom question type.
- **`lms_answer_comments`** — lets teachers and students comment on submitted answers, which is how feedback works.
- **`lms_classes`** — organises students into classes, for cohorts running the same course.

It also ships SDC components (`course_card`, `course_navigation`, `lesson_item`, `activity_item`, `course_status`, `start_link`, `toolbar_icon`), so the learner-facing UI is themeable through the component system rather than template overrides alone.

---

- Run online courses on a Drupal site.
- Organise lessons within a course.
- Define activities students complete.
- Collect and store student answers.
- Track a learner's progress through a course.
- Enrol students as group members.
- Give each course its own instructors.
- Restrict course visibility per group.
- Let teachers comment on submitted answers.
- Let students respond to feedback.
- Organise students into classes or cohorts.
- Run the same course for several cohorts.
- Add a custom question type as an answer plugin.
- Theme the learner UI with SDC components.
- Report on completion across a cohort.
- Separate course administration from course delivery.
- Build staff training on an existing Drupal site.
- Reuse Group's access model instead of writing one.