<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Webform Quiz Elements adds quiz-style elements to Webform — questions with correct answers and scoring — so an assessment can be built with the form builder a site already has.

---

Drupal's dedicated quiz modules bring their own content types, question banks and result storage, which is right for a learning platform and disproportionate for a knowledge check at the end of an article or a short compliance test. Webform already handles building the form, validating input, storing submissions, emailing results and exporting data; what it lacks is the notion that an answer can be *correct*. This module adds that as elements, so a quiz is a webform and everything Webform already does — conditional logic, multi-step, access control, handlers, exports — applies unchanged. It depends on `webform` and targets `^10 || ^11`. The thing to be clear about is what this is not: correct answers are part of the **form definition**, so anyone who can inspect the rendered form or its configuration can potentially see them, and scoring happens where the submission is processed. For a low-stakes knowledge check that is fine and the convenience is the point. For an assessment with real consequences — certification, recruitment, anything graded — the answer key needs to be genuinely server-side and the module's threat model checked rather than assumed.

---

- Add a knowledge check to an article.
- Build a short quiz with Webform.
- Score a compliance test.
- Add correct answers to form questions.
- Reuse Webform's conditional logic in a quiz.
- Email quiz results to a participant.
- Export quiz submissions.
- Build an onboarding assessment.
- Add a self-assessment to a course page.
- Avoid a full quiz platform.
- Use Webform's access control for a quiz.
- Build a multi-step assessment.
- Score a survey with right answers.
- Add a training check.
- Reuse existing Webform skills.
- Build a fun engagement quiz.
- Store results as submissions.
- Report on quiz outcomes.
