<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Personality Test (personality_assessment_test) — agent index

**DISC-style personality quiz at `/personality-test`; POSTed results are saved as a node.**

- **Version:** 1.0.x (dev-1.0.x checkout)
- **Core:** ^9 || ^10 || ^11
- **Route:** `personality_test.content` → `/personality-test`, methods GET+POST, perm `access content`. Controller `PersonalityTestController::content`.
- **Block:** `PersonalityTestQuizBlock`. **Theme:** `personality_test_quiz` (template `personality-test-quiz.html.twig`). **Data:** fixed 28-question set in `src/Options.php`.
- **Expects** a `personality_assessment_test` node type with `field_personality_test_user_id` and `field_personality_test_result` (full_html).

**Security observations (report, not recorded):**
- `src/Controller/PersonalityTestController.php:60-84` — POST is gated only by `access content` (anonymous), yet unconditionally `Node::create(...)->save()`. Unauthenticated node creation / spam vector.
- `PersonalityTestController.php:69` + `:81` — the `$score` value from the request JSON is concatenated into the results table markup **without escaping** (only the trait key is `htmlspecialchars`-ed) and stored in a node field with `format => 'full_html'` → stored XSS via a crafted `finalResult` payload.

See [api/endpoint.md](api/endpoint.md).