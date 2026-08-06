<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# LMS (lms) — agent index

Learning management core: courses → lessons → activities → answers, as entities, built on
**Group**. Version **1.1.18**. Core `^10.3 || ^11`.
Depends on `user`, `views`, **`group:group`**.

**Group is the design decision that matters.** A course is a group, enrolment is membership, and
per-course access (who sees it, who takes it, who edits it, who sees others' answers) is Group's
model rather than a bespoke one. That is what makes many courses with different instructors and
cohorts workable.

Permissions: `administer lms` (**`restrict access: true`**), plus per-entity
create/use permissions — e.g. `create lms_activity entities` ("also grants access to view / edit
own activities by default"), `use all lms_activity entities`.

Submodules:

- **`lms_answer_plugins`** — the basic Activity/Answer plugin set; **the extension point for a
  custom question type**.
- **`lms_answer_comments`** — teacher/student comments on submitted answers (the feedback loop).
- **`lms_classes`** — organises students into classes/cohorts.

Ships SDC components: `course_card`, `course_navigation`, `lesson_item`, `activity_item`,
`course_status`, `start_link`, `toolbar_icon` — so the learner UI is themeable through the
component system.