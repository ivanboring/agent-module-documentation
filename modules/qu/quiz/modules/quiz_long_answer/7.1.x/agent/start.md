# Quiz - Long answer — agent index

Adds the **`long_answer`** (essay) question type to Quiz (parent:
[../../../../7.1.x/agent/start.md](../../../../7.1.x/agent/start.md)). Depends on `quiz`.
**Manually graded.** No configure route/permissions/Drush; one module setting.

## The type

- Plugin: `LongAnswerQuestion` (`#[QuizQuestion(id: 'long_answer')]`), handler
  `response => LongAnswerResponse`.
- Config entity: `quiz.question.type.long_answer` (bundle of `quiz_question`); answer bundle
  `quiz.result.answer.type.long_answer`.
- Fields on the `long_answer` bundle:
  - `long_answer_rubric` — text_long: optional grading guidance shown to the evaluator.
  - `answer_text_processing` — boolean: whether the taker's answer uses a filtered text format.
- **Grading is manual**: `LongAnswerResponse::score()` calls `setEvaluated(FALSE)`, so the
  answer goes to Quiz's *unevaluated results* queue until a grader awards points.
- Max score defaults to `quiz_long_answer.settings:default_max_score` (shipped `10`).

## Create one in code

```php
use Drupal\quiz\Entity\QuizQuestion;
$q = QuizQuestion::create([
  'type' => 'long_answer',
  'title' => 'Explain photosynthesis',
  'long_answer_rubric' => 'Award points for mentioning light, water and CO2.',
]);
$q->save();
```

## Read it back / settings

```bash
drush cget quiz_long_answer.settings default_max_score
drush php:eval '$l=\Drupal::entityTypeManager()->getStorage("quiz_question")->loadByProperties(["type"=>"long_answer","title"=>"Explain photosynthesis"]);$q=reset($l);print $q->get("long_answer_rubric")->value;'
```
