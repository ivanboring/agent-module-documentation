#!/usr/bin/env bash
set -uo pipefail
cd /var/www/html
D=agent-module-documentation/evaluation/verify
hr(){ echo "======== $1 ========"; }

hr "ENTITY_BROWSER set-widget"
bash $D/custom_field_entity_browser-set-widget-reset.sh
echo -n "FAIL? "; bash $D/custom_field_entity_browser-set-widget-verify.sh; echo "exit=$?"
drush php:eval '$fd=\Drupal::service("entity_display.repository")->getFormDisplay("node","cfeb_eval","default");$c=$fd->getComponent("field_cfeb_ref");$c["settings"]["fields"]["ref"]["type"]="entity_reference_entity_browser";$fd->setComponent("field_cfeb_ref",$c)->save();print "built\n";'
echo -n "PASS? "; bash $D/custom_field_entity_browser-set-widget-verify.sh; echo "exit=$?"
bash $D/custom_field_entity_browser-set-widget-cleanup.sh

hr "ENTITY_BROWSER build-ref"
bash $D/custom_field_entity_browser-build-ref-field-reset.sh
echo -n "FAIL? "; bash $D/custom_field_entity_browser-build-ref-field-verify.sh; echo "exit=$?"
drush php:eval 'use Drupal\field\Entity\FieldStorageConfig;use Drupal\field\Entity\FieldConfig;FieldStorageConfig::create(["field_name"=>"field_cfeb_ref","entity_type"=>"node","type"=>"custom","cardinality"=>1,"settings"=>["columns"=>["ref"=>["name"=>"ref","type"=>"entity_reference","target_type"=>"node"]]]])->save();FieldConfig::create(["field_name"=>"field_cfeb_ref","entity_type"=>"node","bundle"=>"cfeb_eval","label"=>"Ref"])->save();print "built\n";'
echo -n "PASS? "; bash $D/custom_field_entity_browser-build-ref-field-verify.sh; echo "exit=$?"
bash $D/custom_field_entity_browser-build-ref-field-cleanup.sh

hr "MEDIA set-widget"
bash $D/custom_field_media-set-widget-reset.sh
echo -n "FAIL? "; bash $D/custom_field_media-set-widget-verify.sh; echo "exit=$?"
drush php:eval '$fd=\Drupal::service("entity_display.repository")->getFormDisplay("node","cfmedia_eval","default");$c=$fd->getComponent("field_cfmedia_disp");$c["settings"]["fields"]["image"]["type"]="media_library_widget";$fd->setComponent("field_cfmedia_disp",$c)->save();print "built\n";'
echo -n "PASS? "; bash $D/custom_field_media-set-widget-verify.sh; echo "exit=$?"
bash $D/custom_field_media-set-widget-cleanup.sh

hr "MEDIA build-ref"
bash $D/custom_field_media-build-ref-reset.sh
echo -n "FAIL? "; bash $D/custom_field_media-build-ref-verify.sh; echo "exit=$?"
drush php:eval 'use Drupal\field\Entity\FieldStorageConfig;use Drupal\field\Entity\FieldConfig;FieldStorageConfig::create(["field_name"=>"field_cfmedia_task","entity_type"=>"node","type"=>"custom","cardinality"=>1,"settings"=>["columns"=>["photo"=>["name"=>"photo","type"=>"entity_reference","target_type"=>"media"]]]])->save();FieldConfig::create(["field_name"=>"field_cfmedia_task","entity_type"=>"node","bundle"=>"cfmedia_eval","label"=>"Task"])->save();print "built\n";'
echo -n "PASS? "; bash $D/custom_field_media-build-ref-verify.sh; echo "exit=$?"
bash $D/custom_field_media-build-ref-cleanup.sh

hr "LINKIT assign-widget"
bash $D/custom_field_linkit-widget-reset.sh
echo -n "FAIL? "; bash $D/custom_field_linkit-widget-verify.sh; echo "exit=$?"
drush php:eval '$fd=\Drupal::entityTypeManager()->getStorage("entity_form_display")->load("node.cf_lk_eval.default");$c=$fd->getComponent("field_cf_lk");$c["settings"]["fields"]["cta"]["type"]="linkit";$fd->setComponent("field_cf_lk",$c)->save();print "built\n";'
echo -n "PASS? "; bash $D/custom_field_linkit-widget-verify.sh; echo "exit=$?"
bash $D/custom_field_linkit-teardown.sh

hr "LINKIT build-uri"
bash $D/custom_field_linkit-build-reset.sh
echo -n "FAIL? "; bash $D/custom_field_linkit-build-verify.sh; echo "exit=$?"
drush php:eval 'use Drupal\field\Entity\FieldStorageConfig;use Drupal\field\Entity\FieldConfig;FieldStorageConfig::create(["field_name"=>"field_cf_lk","entity_type"=>"node","type"=>"custom","cardinality"=>1,"settings"=>["columns"=>["site"=>["name"=>"site","type"=>"uri"]]]])->save();FieldConfig::create(["field_name"=>"field_cf_lk","entity_type"=>"node","bundle"=>"cf_lk_eval","label"=>"Links"])->save();$s=\Drupal::entityTypeManager()->getStorage("entity_form_display");$fd=$s->load("node.cf_lk_eval.default") ?: $s->create(["targetEntityType"=>"node","bundle"=>"cf_lk_eval","mode"=>"default","status"=>true]);$fd->setComponent("field_cf_lk",["type"=>"custom_stacked","region"=>"content","weight"=>5,"settings"=>["fields"=>["site"=>["type"=>"linkit_url","weight"=>0]]]])->save();print "built\n";'
echo -n "PASS? "; bash $D/custom_field_linkit-build-verify.sh; echo "exit=$?"
bash $D/custom_field_linkit-teardown.sh

hr "FINAL cleanliness"
drush php:eval 'foreach(["cfeb_eval","cfmedia_eval","cf_lk_eval"] as $t){print $t."=".(\Drupal\node\Entity\NodeType::load($t)?"PRESENT":"gone")." ";}print "\n";'
echo "BATCHA SMOKE DONE"
