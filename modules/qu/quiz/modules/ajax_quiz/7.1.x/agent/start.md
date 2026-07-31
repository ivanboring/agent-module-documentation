# AJAX Quiz — agent index

A behaviour add-on for Quiz (parent:
[../../../../7.1.x/agent/start.md](../../../../7.1.x/agent/start.md)) that loads successive
questions in-page via AJAX. **No entities, question types, config, or Drush.** Depends on
`quiz`. Maintainers warn it does not degrade gracefully — not recommended for production.

## How it works

- `ajax_quiz_form_alter()` runs on the forms `quiz_question_answering_form` and
  `quiz_report_form`, **only when the current user has `access ajax quiz`**.
- It wraps the form in an `#ajax-quiz-wrapper` div and attaches an `#ajax` callback
  (`ajax_quiz_navigate_quiz`) to each submit button under the form's `navigation` element.
- `ajax_quiz_navigate_quiz()` uses the **`quiz.session`** service (temporary result, current
  question, layout) to render the next answering form / feedback and update `#quiz-progress`,
  or issues a `RedirectCommand` to the result page when the quiz is finished.

## The one permission

- **`access ajax quiz`** — "Allowed to take a quiz with ajax." Grant it to the roles that
  should get the AJAX experience; without it, the standard (non-AJAX) flow is used.

```bash
# grant to a role
drush php:eval '$r=\Drupal\user\Entity\Role::load("authenticated");$r->grantPermission("access ajax quiz");$r->save();'
# check
drush php:eval '$r=\Drupal\user\Entity\Role::load("authenticated");var_export($r->hasPermission("access ajax quiz"));'
```
