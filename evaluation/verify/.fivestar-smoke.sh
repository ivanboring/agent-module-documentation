#!/usr/bin/env bash
# Namespaced smoke harness for fivestar eval scripts. Runs entirely in-container.
set -uo pipefail
D=/var/www/html/agent-module-documentation/evaluation/verify
echo "### medium: field-stars cleanup (from prior run)"; bash $D/fivestar-field-stars-cleanup.sh
echo "### medium: widget-skin"
bash $D/fivestar-widget-skin-setup.sh
cd /var/www/html && drush php:eval '$c=\Drupal::service("entity_display.repository")->getViewDisplay("node","article","default")->getComponent("field_fs_skin"); print "READBACK skin=".($c["settings"]["fivestar_widget"]??"none")."\n";'
bash $D/fivestar-widget-skin-cleanup.sh
echo "### hard: create-field"
bash $D/fivestar-create-field-reset.sh
echo -n "verify on empty (want FAIL/exit1): "; bash $D/fivestar-create-field-verify.sh; echo "exit=$?"
cd /var/www/html && drush php:eval '
  use Drupal\field\Entity\FieldStorageConfig; use Drupal\field\Entity\FieldConfig;
  FieldStorageConfig::create(["field_name"=>"field_fs_task","entity_type"=>"node","type"=>"fivestar","settings"=>["vote_type"=>"vote"]])->save();
  FieldConfig::create(["field_name"=>"field_fs_task","entity_type"=>"node","bundle"=>"article","label"=>"Task Rating","settings"=>["stars"=>5]])->save();
' >/dev/null 2>&1
echo -n "verify after build (want PASS/exit0): "; bash $D/fivestar-create-field-verify.sh; echo "exit=$?"
bash $D/fivestar-create-field-reset.sh
echo -n "verify after final reset (want FAIL/exit1): "; bash $D/fivestar-create-field-verify.sh; echo "exit=$?"
bash $D/fivestar-create-field-cleanup.sh
echo "### hard: set-formatter"
bash $D/fivestar-set-formatter-reset.sh
echo -n "verify on reset (want FAIL/exit1): "; bash $D/fivestar-set-formatter-verify.sh; echo "exit=$?"
cd /var/www/html && drush php:eval '\Drupal::service("entity_display.repository")->getViewDisplay("node","article","default")->setComponent("field_fs_display",["type"=>"fivestar_rating","settings"=>[]])->save();' >/dev/null 2>&1
echo -n "verify after build (want PASS/exit0): "; bash $D/fivestar-set-formatter-verify.sh; echo "exit=$?"
bash $D/fivestar-set-formatter-reset.sh
echo -n "verify after final reset (want FAIL/exit1): "; bash $D/fivestar-set-formatter-verify.sh; echo "exit=$?"
bash $D/fivestar-set-formatter-cleanup.sh
echo "### DONE"
