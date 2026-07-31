#!/usr/bin/env bash
V=/var/www/html/agent-module-documentation/evaluation/verify
cd /var/www/html

echo "=== MEDIUM probe ==="
bash $V/pluginformalter-probe-setup.sh
echo -n "discover marker: "
drush php:eval '
  use Drupal\Core\Form\FormState;
  $pm = \Drupal::service("plugin.manager.form_alter");
  $f = []; $fs = new FormState();
  foreach ($pm->getInstance(["form_id"=>"user_login_form"]) as $p) { $p->formAlter($f, $fs, "user_login_form"); }
  print ($f["pfa_probe_marker"]["#value"] ?? "NONE")."\n";
' 2>/dev/null
echo -n "provider module: "
drush php:eval '
  $pm = \Drupal::service("plugin.manager.form_alter");
  foreach ($pm->getDefinitions() as $id=>$def) { if (($def["form_id"][0] ?? "")==="user_login_form") { print $def["provider"]."\n"; } }
' 2>/dev/null
bash $V/pluginformalter-probe-cleanup.sh

echo "=== HARD1 form_id ==="
bash $V/pluginformalter-impl-reset.sh
echo -n "empty(want FAIL): "; if bash $V/pluginformalter-impl-verify.sh >/dev/null 2>&1; then echo BADPASS; else echo FAIL_ok; fi
# build the module (agent's job)
M=web/modules/custom/pluginformalter_eval
mkdir -p "$M/src/Plugin/FormAlter"
cat > "$M/pluginformalter_eval.info.yml" <<'YML'
name: 'PFA Eval'
type: module
core_version_requirement: ^10 || ^11
dependencies:
  - pluginformalter:pluginformalter
YML
cat > "$M/src/Plugin/FormAlter/EvalLoginAlter.php" <<'PHP'
<?php
namespace Drupal\pluginformalter_eval\Plugin\FormAlter;
use Drupal\Core\Form\FormStateInterface;
use Drupal\pluginformalter\Plugin\FormAlterBase;
/**
 * @FormAlter(
 *   id = "pluginformalter_eval_login",
 *   form_id = { "user_login_form" }
 * )
 */
class EvalLoginAlter extends FormAlterBase {
  public function formAlter(array &$form, FormStateInterface $form_state, $form_id) {
    $form['pfa_marker'] = ['#value' => 'ok'];
  }
}
PHP
drush en pluginformalter_eval -y >/dev/null 2>&1
drush cr >/dev/null 2>&1
echo -n "built(want PASS): "; bash $V/pluginformalter-impl-verify.sh
bash $V/pluginformalter-impl-cleanup.sh

echo "=== HARD2 base_form_id ==="
bash $V/pluginformalter-base-reset.sh
echo -n "empty(want FAIL): "; if bash $V/pluginformalter-base-verify.sh >/dev/null 2>&1; then echo BADPASS; else echo FAIL_ok; fi
M2=web/modules/custom/pluginformalter_eval_base
mkdir -p "$M2/src/Plugin/FormAlter"
cat > "$M2/pluginformalter_eval_base.info.yml" <<'YML'
name: 'PFA Eval Base'
type: module
core_version_requirement: ^10 || ^11
dependencies:
  - pluginformalter:pluginformalter
YML
cat > "$M2/src/Plugin/FormAlter/EvalBaseAlter.php" <<'PHP'
<?php
namespace Drupal\pluginformalter_eval_base\Plugin\FormAlter;
use Drupal\Core\Form\FormStateInterface;
use Drupal\pluginformalter\Plugin\FormAlterBase;
/**
 * @FormAlter(
 *   id = "pluginformalter_eval_base",
 *   base_form_id = { "node_form" }
 * )
 */
class EvalBaseAlter extends FormAlterBase {
  public function formAlter(array &$form, FormStateInterface $form_state, $form_id) {
    $form['pfa_base_marker'] = ['#value' => 'ok'];
  }
}
PHP
drush en pluginformalter_eval_base -y >/dev/null 2>&1
drush cr >/dev/null 2>&1
echo -n "built(want PASS): "; bash $V/pluginformalter-base-verify.sh
bash $V/pluginformalter-base-cleanup.sh
echo "=== PFA_SMOKE_DONE ==="
