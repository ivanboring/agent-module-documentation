# Quiz - Short answer — agent index

Adds the **`short_answer`** question type to Quiz (parent:
[../../../../7.1.x/agent/start.md](../../../../7.1.x/agent/start.md)). Depends on `quiz`.
No configure route/permissions/Drush; one module setting.

## The type

- Plugin: `ShortAnswerQuestion` (`#[QuizQuestion(id: 'short_answer')]`), handler
  `response => ShortAnswerResponse`.
- Config entity: `quiz.question.type.short_answer` (bundle of `quiz_question`); answer bundle
  `quiz.result.answer.type.short_answer`.
- Fields on the `short_answer` bundle:
  - `short_answer_correct` — text: the expected answer (or a regex when in regex mode).
  - `short_answer_evaluation` — `list_integer` grading mode:
    - `0` = Automatic, case sensitive
    - `1` = Automatic, case insensitive
    - `2` = Match against a regular expression
    - `3` = Manual
- Answering widget: a single "Answer" textfield. `ShortAnswerResponse` scores automatic modes
  against `short_answer_correct`; manual questions are left unevaluated for a grader.
- Max score defaults to `quiz_short_answer.settings:default_max_score` (shipped `5`).

## Create one in code

```php
use Drupal\quiz\Entity\QuizQuestion;
$q = QuizQuestion::create([
  'type' => 'short_answer',
  'title' => 'Capital of France',
  'short_answer_correct' => 'Paris',
  'short_answer_evaluation' => 1,   // case-insensitive auto grading
]);
$q->save();
```

## Read it back / settings

```bash
drush cget quiz_short_answer.settings default_max_score
drush php:eval '$l=\Drupal::entityTypeManager()->getStorage("quiz_question")->loadByProperties(["type"=>"short_answer","title"=>"Capital of France"]);$q=reset($l);print $q->get("short_answer_correct")->value." / eval=".$q->get("short_answer_evaluation")->value;'
```
