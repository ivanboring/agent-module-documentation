<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
AI AutoEvals scores the factuality of AI responses via a two-step LLM evaluation.

---

AI AutoEvals provides automated factuality evaluation of AI responses using a two-step LLM evaluation — running AI-generated answers through an evaluation process (using an LLM to judge factuality) so teams can measure and track the quality/accuracy of their AI features, with evaluation sets and results.

Evaluation runs through the configured AI provider (cost). Permissions cover administration, results CRUD, evaluation sets, and requeue/batch operations. Depends on `ai` and `key`; supports Drupal 10.2+ and 11.

---

- Evaluate AI-response factuality.
- Use a two-step LLM evaluation.
- Judge accuracy with an LLM.
- Measure AI feature quality.
- Track evaluation results.
- Manage evaluation sets.
- Run via the AI provider (cost).
- Gate admin with `administer ai autoevals`.
- Gate results CRUD + sets.
- Gate requeue/batch operations.
- Depend on `ai` and `key`.
- Support Drupal 10.2+ and 11.
- Support AI QA.
- Configure evaluations.
- Score factuality.
- Batch-evaluate
- Requeue evaluations
- Track AI accuracy
