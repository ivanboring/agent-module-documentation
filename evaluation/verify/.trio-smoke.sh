#!/usr/bin/env bash
set -uo pipefail
cd /var/www/html
D=agent-module-documentation/evaluation/verify

echo "========== LINKIT =========="
echo "-- M known-widget --"
bash $D/custom_field_linkit-setup.sh
drush php:eval '$fd=\Drupal::entityTypeManager()->getStorage("entity_form_display")->load("node.cf_lk_eval.default");$fs=\Drupal\field\Entity\FieldStorageConfig::loadByName("node","field_cf_lk");print "cta_widget=".($fd->getComponent("field_cf_lk")["settings"]["fields"]["cta"]["type"]??"none")." col_type=".($fs->getSetting("columns")["cta"]["type"]??"none")."\n";'
bash $D/custom_field_linkit-teardown.sh
echo "-- H assign-widget --"
bash $D/custom_field_linkit-widget-reset.sh
echo -n "FAIL/1: "; bash $D/custom_field_linkit-widget-verify.sh; echo "e=$?"
drush php:eval '$fd=\Drupal::entityTypeManager()->getStorage("entity_form_display")->load("node.cf_lk_eval.default");$c=$fd->getComponent("field_cf_lk");$c["settings"]["fields"]["cta"]["type"]="linkit";$fd->setComponent("field_cf_lk",$c)->save();'
echo -n "PASS/0: "; bash $D/custom_field_linkit-widget-verify.sh; echo "e=$?"
bash $D/custom_field_linkit-teardown.sh
echo "-- H build-uri --"
bash $D/custom_field_linkit-build-reset.sh
echo -n "FAIL/1: "; bash $D/custom_field_linkit-build-verify.sh; echo "e=$?"
drush php:script $D/.cflk-build.php
echo -n "PASS/0: "; bash $D/custom_field_linkit-build-verify.sh; echo "e=$?"
bash $D/custom_field_linkit-teardown.sh

echo "========== MEDIA =========="
echo "-- M known-widget --"
bash $D/custom_field_media-known-widget-setup.sh
drush php:eval '$fd=\Drupal::service("entity_display.repository")->getFormDisplay("node","cfmedia_eval","default");print "img_widget=".($fd->getComponent("field_cfmedia_wid")["settings"]["fields"]["image"]["type"]??"none")."\n";'
bash $D/custom_field_media-known-widget-cleanup.sh
echo "-- H set-widget --"
bash $D/custom_field_media-set-widget-reset.sh
echo -n "FAIL/1: "; bash $D/custom_field_media-set-widget-verify.sh; echo "e=$?"
drush php:eval '$fd=\Drupal::service("entity_display.repository")->getFormDisplay("node","cfmedia_eval","default");$c=$fd->getComponent("field_cfmedia_disp");$c["settings"]["fields"]["image"]["type"]="media_library_widget";$fd->setComponent("field_cfmedia_disp",$c)->save();'
echo -n "PASS/0: "; bash $D/custom_field_media-set-widget-verify.sh; echo "e=$?"
bash $D/custom_field_media-set-widget-cleanup.sh
echo "-- H build-ref --"
bash $D/custom_field_media-build-ref-reset.sh
echo -n "FAIL/1: "; bash $D/custom_field_media-build-ref-verify.sh; echo "e=$?"
drush php:script $D/.cfmedia-build.php
echo -n "PASS/0: "; bash $D/custom_field_media-build-ref-verify.sh; echo "e=$?"
bash $D/custom_field_media-build-ref-cleanup.sh

echo "========== VIEWFIELD =========="
echo "-- M known-widget --"
bash $D/custom_field_viewfield-setup.sh
drush php:eval '$fd=\Drupal::entityTypeManager()->getStorage("entity_form_display")->load("node.cf_vf_eval.default");$fs=\Drupal\field\Entity\FieldStorageConfig::loadByName("node","field_cf_vf");print "listing_widget=".($fd->getComponent("field_cf_vf")["settings"]["fields"]["listing"]["type"]??"none")." col_type=".($fs->getSetting("columns")["listing"]["type"]??"none")."\n";'
bash $D/custom_field_viewfield-teardown.sh
echo "-- H build-column --"
bash $D/custom_field_viewfield-build-reset.sh
echo -n "FAIL/1: "; bash $D/custom_field_viewfield-build-verify.sh; echo "e=$?"
drush php:script $D/.cfvf-build.php
echo -n "PASS/0: "; bash $D/custom_field_viewfield-build-verify.sh; echo "e=$?"
bash $D/custom_field_viewfield-teardown.sh
echo "-- H set-widget --"
bash $D/custom_field_viewfield-widget-reset.sh
echo -n "FAIL/1: "; bash $D/custom_field_viewfield-widget-verify.sh; echo "e=$?"
drush php:eval '$fd=\Drupal::entityTypeManager()->getStorage("entity_form_display")->load("node.cf_vf_eval.default");$c=$fd->getComponent("field_cf_vf");$c["settings"]["fields"]["listing"]["type"]="viewfield_select";$fd->setComponent("field_cf_vf",$c)->save();'
echo -n "PASS/0: "; bash $D/custom_field_viewfield-widget-verify.sh; echo "e=$?"
bash $D/custom_field_viewfield-teardown.sh

echo "========== FINAL CLEAN =========="
drush php:eval 'foreach(["cf_lk_eval","cfmedia_eval","cf_vf_eval"] as $t){print $t."=".(\Drupal\node\Entity\NodeType::load($t)?"PRESENT":"gone")." ";}print "\n";$m=\Drupal::service("entity_field.manager")->getFieldMap()["node"]??[];$n=array_filter(array_keys($m),fn($x)=>preg_match("/^field_cf(_lk|media|_vf)/",$x));print "leftover=".(implode(",",$n)?:"none")."\n";'
echo "TRIO SMOKE DONE"
