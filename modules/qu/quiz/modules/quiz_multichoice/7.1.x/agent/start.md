# Quiz - Multichoice — agent index

Adds the **`multichoice`** question type to Quiz (parent:
[../../../../7.1.x/agent/start.md](../../../../7.1.x/agent/start.md)). Depends on `quiz` and
`field_group`. No configure route/permissions/Drush; one module setting.

## The type

- Plugin: `MultichoiceQuestion` (`#[QuizQuestion(id: 'multichoice')]`), handler
  `response => MultichoiceResponse`.
- Config entity: `quiz.question.type.multichoice` (bundle of `quiz_question`); answer bundle
  `quiz.result.answer.type.multichoice`.
- Question fields (on the `multichoice` `quiz_question` bundle):
  - `alternatives` — entity_reference_revisions to **`multichoice`** paragraphs.
  - `choice_multi` — boolean: allow more than one answer (checkboxes vs radios).
  - `choice_boolean` — boolean: simple correct/incorrect scoring.
  - `choice_random` — boolean: shuffle alternatives each attempt.
- Each **`multichoice` paragraph** (one alternative) has: `multichoice_answer` (text),
  `multichoice_correct` (boolean), `multichoice_score_chosen`, `multichoice_score_not_chosen`
  (integers), `multichoice_feedback_chosen`, `multichoice_feedback_not_chosen` (text).
- Scoring (`MultichoiceResponse`): sums the chosen/not-chosen scores of the alternatives; the
  default model comes from `quiz_multichoice.settings:scoring` (`0` or `1`).

## Create one in code

```php
use Drupal\quiz\Entity\QuizQuestion;
use Drupal\paragraphs\Entity\Paragraph;
$a1 = Paragraph::create(['type'=>'multichoice','multichoice_answer'=>'Paris','multichoice_correct'=>1,'multichoice_score_chosen'=>1]);
$a1->save();
$a2 = Paragraph::create(['type'=>'multichoice','multichoice_answer'=>'Rome','multichoice_correct'=>0]);
$a2->save();
$q = QuizQuestion::create([
  'type'=>'multichoice','title'=>'Capital of France',
  'choice_multi'=>0, 'choice_random'=>1, 'choice_boolean'=>1,
  'alternatives'=>[$a1, $a2],
]);
$q->save();
```

## Read/settings

```bash
drush cget quiz_multichoice.settings scoring
drush php:eval '$l=\Drupal::entityTypeManager()->getStorage("quiz_question")->loadByProperties(["type"=>"multichoice","title"=>"Capital of France"]);$q=reset($l);print "choice_multi=".$q->get("choice_multi")->value;'
```
