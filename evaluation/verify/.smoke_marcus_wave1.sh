#!/usr/bin/env bash
# Namespaced smoke orchestrator for marcus's wave-1 modules. Runs inside the container.
# Deleted by the author after use.
set -uo pipefail
cd /var/www/html
V=agent-module-documentation/evaluation/verify
pass=0; fail=0
ok(){ echo "PASS  $1"; pass=$((pass+1)); }
no(){ echo "FAIL  $1"; fail=$((fail+1)); }

# medium check: run setup, probe must contain expected, run cleanup, probe must NOT contain it
med(){ # $1 label  $2 setup  $3 cleanup  $4 expect  $5 probe_php
  bash "$V/$2" >/dev/null 2>&1
  got=$(drush php:eval "$5" 2>/dev/null)
  if echo "$got" | grep -q "$4"; then ok "med-setup $1 [$4]"; else no "med-setup $1 (got: $got)"; fi
  bash "$V/$3" >/dev/null 2>&1
  got=$(drush php:eval "$5" 2>/dev/null)
  if echo "$got" | grep -q "$4"; then no "med-clean $1 (still: $got)"; else ok "med-clean $1"; fi
}

# hard check: reset->verify must FAIL(exit1); build; verify must PASS(exit0); reset; verify FAIL again
hard(){ # $1 label  $2 reset  $3 verify  $4 build_php
  bash "$V/$2" >/dev/null 2>&1
  if bash "$V/$3" >/dev/null 2>&1; then no "hard-emptyPASSbug $1 (verify passed on empty!)"; else ok "hard-failsEmpty $1"; fi
  drush php:eval "$4" >/dev/null 2>&1; drush cr >/dev/null 2>&1
  if bash "$V/$3" >/dev/null 2>&1; then ok "hard-passesBuilt $1"; else no "hard-passesBuilt $1 (verify failed after build)"; fi
  bash "$V/$2" >/dev/null 2>&1
  if bash "$V/$3" >/dev/null 2>&1; then no "hard-reclean $1 (verify still passes after reset)"; else ok "hard-reclean $1"; fi
}

echo "===== ISBN ====="
med "isbn-known" isbn-known-field-setup.sh isbn-known-field-cleanup.sh field_isbn_known \
 'use Drupal\field\Entity\FieldStorageConfig; $f=FieldStorageConfig::loadByName("node","field_isbn_known"); print $f?("field_isbn_known type=".$f->getType()):"absent";'
med "isbn-fmt" isbn-formatter-setup.sh isbn-formatter-cleanup.sh isbn_formatted_formatter \
 '$vd=\Drupal::service("entity_display.repository")->getViewDisplay("node","article","default"); $c=$vd->getComponent("field_isbn_disp"); print $c["type"]??"absent";'
hard "isbn-create" isbn-create-field-reset.sh isbn-create-field-verify.sh \
 'use Drupal\field\Entity\FieldStorageConfig; use Drupal\field\Entity\FieldConfig; if(!FieldStorageConfig::loadByName("node","field_isbn_build")){FieldStorageConfig::create(["field_name"=>"field_isbn_build","entity_type"=>"node","type"=>"isbn"])->save();} if(!FieldConfig::loadByName("node","article","field_isbn_build")){FieldConfig::create(["field_name"=>"field_isbn_build","entity_type"=>"node","bundle"=>"article","label"=>"B"])->save();}'
hard "isbn-setfmt" isbn-set-formatter-reset.sh isbn-set-formatter-verify.sh \
 '\Drupal::service("entity_display.repository")->getViewDisplay("node","article","default")->setComponent("field_isbn_fmt",["type"=>"isbn_formatted_formatter","weight"=>51,"region"=>"content"])->save();'
bash "$V/isbn-create-field-cleanup.sh" >/dev/null 2>&1
bash "$V/isbn-set-formatter-cleanup.sh" >/dev/null 2>&1

echo "===== commerce_abandoned_carts ====="
med "cac-timeout" commerce_abandoned_carts-timeout-setup.sh commerce_abandoned_carts-timeout-cleanup.sh 720 \
 'print "timeout=".\Drupal::config("commerce_abandoned_carts.settings")->get("timeout");'
med "cac-fromname" commerce_abandoned_carts-fromname-setup.sh commerce_abandoned_carts-fromname-cleanup.sh ACME \
 'print "from_name=".\Drupal::config("commerce_abandoned_carts.settings")->get("from_name");'
hard "cac-golive" commerce_abandoned_carts-golive-reset.sh commerce_abandoned_carts-golive-verify.sh \
 '\Drupal::configFactory()->getEditable("commerce_abandoned_carts.settings")->set("timeout",4320)->set("testmode",FALSE)->save();'
hard "cac-bcc" commerce_abandoned_carts-bcc-reset.sh commerce_abandoned_carts-bcc-verify.sh \
 '\Drupal::configFactory()->getEditable("commerce_abandoned_carts.settings")->set("bcc_active",TRUE)->set("bcc_email","ops@example.com")->save();'
bash "$V/commerce_abandoned_carts-golive-cleanup.sh" >/dev/null 2>&1
bash "$V/commerce_abandoned_carts-bcc-cleanup.sh" >/dev/null 2>&1

echo "===== commerce_square ====="
med "csq-gateway" commerce_square-gateway-setup.sh commerce_square-gateway-cleanup.sh L_TEST_KNOWN \
 'use Drupal\commerce_payment\Entity\PaymentGateway; $g=PaymentGateway::load("csq_known"); print $g?("loc=".($g->get("configuration")["test_location_id"]??"?")):"absent";'
med "csq-appid" commerce_square-sandbox-appid-setup.sh commerce_square-sandbox-appid-cleanup.sh sandbox-sq0idb-KNOWN123 \
 'print "appid=".\Drupal::config("commerce_square.settings")->get("sandbox_app_id");'
hard "csq-create" commerce_square-create-gateway-reset.sh commerce_square-create-gateway-verify.sh \
 'use Drupal\commerce_payment\Entity\PaymentGateway; if(!PaymentGateway::load("csq_build")){PaymentGateway::create(["id"=>"csq_build","label"=>"SB","plugin"=>"square","status"=>TRUE,"configuration"=>["mode"=>"test","test_location_id"=>"","live_location_id"=>"","enable_credit_card_icons"=>TRUE]])->save();}'
hard "csq-settings" commerce_square-settings-reset.sh commerce_square-settings-verify.sh \
 '\Drupal::configFactory()->getEditable("commerce_square.settings")->set("sandbox_app_id","sq0idp-BUILD")->set("sandbox_access_token","EAAA-BUILD")->save();'
bash "$V/commerce_square-create-gateway-cleanup.sh" >/dev/null 2>&1
bash "$V/commerce_square-settings-cleanup.sh" >/dev/null 2>&1

echo "===== custom_body_class ====="
med "cbc-type" custom_body_class-type-classes-setup.sh custom_body_class-type-classes-cleanup.sh promo-page \
 '$t=\Drupal::entityTypeManager()->getStorage("node_type")->load("article"); print "classes=".$t->getThirdPartySetting("custom_body_class","classes","NONE");'
med "cbc-node" custom_body_class-node-class-setup.sh custom_body_class-node-class-cleanup.sh cbc-known-class \
 'use Drupal\node\Entity\Node; $ids=\Drupal::entityQuery("node")->condition("title","CBC Known Node")->accessCheck(FALSE)->execute(); print $ids?("bc=".Node::load(reset($ids))->get("body_class")->value):"absent";'
hard "cbc-typeset" custom_body_class-type-set-reset.sh custom_body_class-type-set-verify.sh \
 '$t=\Drupal::entityTypeManager()->getStorage("node_type")->load("article"); $t->setThirdPartySetting("custom_body_class","classes","campaign-2026"); $t->save();'
hard "cbc-nodeset" custom_body_class-node-set-reset.sh custom_body_class-node-set-verify.sh \
 'use Drupal\node\Entity\Node; Node::create(["type"=>"article","title"=>"CBC Hard Node","body_class"=>"launch-hero"])->save();'
bash "$V/custom_body_class-type-set-cleanup.sh" >/dev/null 2>&1
bash "$V/custom_body_class-node-set-cleanup.sh" >/dev/null 2>&1

echo "===== jsonapi_views ====="
med "jav-exposed" jsonapi_views-exposed-setup.sh jsonapi_views-exposed-cleanup.sh "enabled=false" \
 'use Drupal\views\Entity\View; $v=View::load("jav_known"); if(!$v){print "absent";}else{$d=$v->getDisplay("default"); $e=$d["display_options"]["display_extenders"]["jsonapi_views"]["enabled"]??"UNSET"; print "enabled=".var_export($e,TRUE);}'
med "jav-url" jsonapi_views-url-setup.sh jsonapi_views-url-cleanup.sh page_1 \
 'use Drupal\views\Entity\View; $v=View::load("jav_display"); print $v?("displays=".implode(",",array_keys($v->get("display")))):"absent";'
hard "jav-disable" jsonapi_views-disable-reset.sh jsonapi_views-disable-verify.sh \
 'use Drupal\views\Entity\View; $v=View::load("jav_task"); $d=&$v->getDisplay("default"); $d["display_options"]["display_extenders"]["jsonapi_views"]["enabled"]=FALSE; $v->save();'
hard "jav-enable" jsonapi_views-enable-reset.sh jsonapi_views-enable-verify.sh \
 'use Drupal\views\Entity\View; $v=View::load("jav_task2"); $d=&$v->getDisplay("default"); $d["display_options"]["display_extenders"]["jsonapi_views"]["enabled"]=TRUE; $v->save();'
bash "$V/jsonapi_views-disable-cleanup.sh" >/dev/null 2>&1
bash "$V/jsonapi_views-enable-cleanup.sh" >/dev/null 2>&1

echo "===== extra_field_plus ====="
med "efp-wrapper" extra_field_plus-wrapper-setup.sh extra_field_plus-wrapper-cleanup.sh "wrapper=h2" \
 '$fd=\Drupal::entityTypeManager()->getStorage("entity_view_display")->load("node.article.default"); $c=$fd?$fd->getComponent("extra_field_example_node_label"):NULL; print $c?("wrapper=".($c["settings"]["wrapper"]??"?")):"absent";'
med "efp-link" extra_field_plus-link-setup.sh extra_field_plus-link-cleanup.sh "link=1" \
 '$fd=\Drupal::entityTypeManager()->getStorage("entity_view_display")->load("node.article.default"); $c=$fd?$fd->getComponent("extra_field_example_node_label_formatted"):NULL; print $c?("link=".($c["settings"]["link_to_entity"]?"1":"0")):"absent";'
hard "efp-place" extra_field_plus-place-reset.sh extra_field_plus-place-verify.sh \
 '$fd=\Drupal::entityTypeManager()->getStorage("entity_view_display")->load("node.article.default"); $fd->setComponent("extra_field_example_node_label",["type"=>"extra_field_example_node_label","weight"=>20,"region"=>"content","settings"=>["link_to_entity"=>FALSE,"wrapper"=>"h3"]])->save();'
hard "efp-linkset" extra_field_plus-linkset-reset.sh extra_field_plus-linkset-verify.sh \
 '$fd=\Drupal::entityTypeManager()->getStorage("entity_view_display")->load("node.article.default"); $c=$fd->getComponent("extra_field_example_node_label_formatted"); $c["settings"]["link_to_entity"]=TRUE; $fd->setComponent("extra_field_example_node_label_formatted",$c)->save();'
bash "$V/extra_field_plus-place-cleanup.sh" >/dev/null 2>&1
bash "$V/extra_field_plus-linkset-cleanup.sh" >/dev/null 2>&1

echo "===== extra_field_plus_example ====="
med "efpx-wrapper" extra_field_plus_example-wrapper-setup.sh extra_field_plus_example-wrapper-cleanup.sh "wrapper=h4" \
 '$fd=\Drupal::entityTypeManager()->getStorage("entity_view_display")->load("node.article.default"); $c=$fd?$fd->getComponent("extra_field_example_node_label"):NULL; print $c?("wrapper=".($c["settings"]["wrapper"]??"?")):"absent";'
med "efpx-linkfmt" extra_field_plus_example-linkfmt-setup.sh extra_field_plus_example-linkfmt-cleanup.sh "link=1" \
 '$fd=\Drupal::entityTypeManager()->getStorage("entity_view_display")->load("node.article.default"); $c=$fd?$fd->getComponent("extra_field_example_node_label_formatted"):NULL; print $c?("link=".($c["settings"]["link_to_entity"]?"1":"0")):"absent";'
hard "efpx-place" extra_field_plus_example-place-reset.sh extra_field_plus_example-place-verify.sh \
 '$fd=\Drupal::entityTypeManager()->getStorage("entity_view_display")->load("node.article.default"); $fd->setComponent("extra_field_example_node_label",["type"=>"extra_field_example_node_label","weight"=>20,"region"=>"content","settings"=>["link_to_entity"=>FALSE,"wrapper"=>"span"]])->save();'
hard "efpx-wrapperset" extra_field_plus_example-wrapperset-reset.sh extra_field_plus_example-wrapperset-verify.sh \
 '$fd=\Drupal::entityTypeManager()->getStorage("entity_view_display")->load("node.article.default"); $c=$fd->getComponent("extra_field_example_node_label"); $c["settings"]["wrapper"]="h5"; $fd->setComponent("extra_field_example_node_label",$c)->save();'
bash "$V/extra_field_plus_example-place-cleanup.sh" >/dev/null 2>&1
bash "$V/extra_field_plus_example-wrapperset-cleanup.sh" >/dev/null 2>&1

echo
echo "======== SMOKE SUMMARY: pass=$pass fail=$fail ========"
