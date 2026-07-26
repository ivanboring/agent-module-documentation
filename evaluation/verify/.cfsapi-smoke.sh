#!/usr/bin/env bash
set -uo pipefail
cd /var/www/html
D=agent-module-documentation/evaluation/verify

echo "### MEDIUM live-mapping ###"
bash $D/custom_field_search_api-live-mapping-setup.sh
drush php:eval 'print "mapping_string_long=".var_export(\Drupal::service("search_api.data_type_helper")->getFieldTypeMapping()["custom_field_string_long"] ?? "MISSING",true)."\n";'
bash $D/custom_field_search_api-shared-cleanup.sh

echo "### MEDIUM known-indexed ###"
bash $D/custom_field_search_api-known-indexed-setup.sh
drush php:eval '$fs=\Drupal::config("search_api.index.cfsapi_index")->get("field_settings")??[]; foreach($fs as $k=>$f){print "field ".$k." path=".($f["property_path"]??"?")." type=".($f["type"]??"?")."\n";}'
bash $D/custom_field_search_api-shared-cleanup.sh

echo "### HARD index-body ###"
bash $D/custom_field_search_api-index-body-reset.sh
echo -n "verify empty (expect FAIL/1): "; bash $D/custom_field_search_api-index-body-verify.sh; echo "exit=$?"
drush php:eval '\Drupal::configFactory()->getEditable("search_api.index.cfsapi_index")->set("field_settings.cfsapi_body",["label"=>"Body","datasource_id"=>"entity:node","property_path"=>"field_cfsapi_desc:body","type"=>"text"])->save();'
echo -n "verify built (expect PASS/0): "; bash $D/custom_field_search_api-index-body-verify.sh; echo "exit=$?"
bash $D/custom_field_search_api-shared-cleanup.sh

echo "### HARD index-title ###"
bash $D/custom_field_search_api-index-title-reset.sh
echo -n "verify reset (expect FAIL/1): "; bash $D/custom_field_search_api-index-title-verify.sh; echo "exit=$?"
drush php:eval '$c=\Drupal::configFactory()->getEditable("search_api.index.cfsapi_index"); $fsv=$c->get("field_settings")??[]; $fsv["cfsapi_title"]=["label"=>"Title","datasource_id"=>"entity:node","property_path"=>"field_cfsapi_desc:title","type"=>"string"]; $c->set("field_settings",$fsv)->save();'
echo -n "verify built (expect PASS/0): "; bash $D/custom_field_search_api-index-title-verify.sh; echo "exit=$?"
bash $D/custom_field_search_api-shared-cleanup.sh

echo "### FINAL ###"
drush php:eval 'print "cfsapi_eval=".(\Drupal\node\Entity\NodeType::load("cfsapi_eval")?"PRESENT":"gone")." index=".(\Drupal\search_api\Entity\Index::load("cfsapi_index")?"PRESENT":"gone")."\n";'
echo "SAPI SMOKE DONE"
