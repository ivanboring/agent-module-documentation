# Quiz - Matching — agent index

Adds the **`matching`** question type to Quiz (parent:
[../../../../7.1.x/agent/start.md](../../../../7.1.x/agent/start.md)). Depends on `quiz` and
`paragraphs`. No configure route/permissions/Drush; one module setting.

## The type

- Plugin: `MatchingQuestion` (`#[QuizQuestion(id: 'matching')]`), handler
  `response => MatchingResponse`.
- Config entity: `quiz.question.type.matching` (bundle of `quiz_question`); answer bundle
  `quiz.result.answer.type.matching`.
- Fields on the `matching` bundle:
  - **`quiz_matching`** — REQUIRED Paragraphs reference to `quiz_matching` paragraphs; each
    paragraph has `matching_question` (prompt) and `matching_answer` (its correct match).
  - `choice_penalty` — points subtracted for a wrong match (optional).
- Scoring: `getMaximumScore()` returns the **number of pairs** (one point per correct match).
- Module setting `quiz_matching.settings:shuffle` (boolean) shuffles the presented answers.

## Create one in code

```php
use Drupal\quiz\Entity\QuizQuestion;
use Drupal\paragraphs\Entity\Paragraph;
$pairs = [];
foreach ([['France','Paris'], ['Italy','Rome']] as $p) {
  $par = Paragraph::create(['type'=>'quiz_matching','matching_question'=>$p[0],'matching_answer'=>$p[1]]);
  $par->save();
  $pairs[] = $par;
}
$q = QuizQuestion::create([
  'type' => 'matching', 'title' => 'Countries and capitals',
  'quiz_matching' => $pairs, 'choice_penalty' => 0,
]);
$q->save();   // worth 2 points (2 pairs)
```

## Read it back / settings

```bash
drush cget quiz_matching.settings shuffle
drush php:eval '$l=\Drupal::entityTypeManager()->getStorage("quiz_question")->loadByProperties(["type"=>"matching","title"=>"Countries and capitals"]);$q=reset($l);print count($q->get("quiz_matching")->referencedEntities())." pairs";'
```
