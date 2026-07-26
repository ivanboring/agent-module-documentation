#!/usr/bin/env bash
# Namespaced combined smoke harness for smi / vjs / mc / ls eval scripts. In-container.
set -uo pipefail
D=/var/www/html/agent-module-documentation/evaluation/verify
cd /var/www/html

echo "======== SIMPLE_MENU_ICONS ========"
echo "-- medium which-link --"
bash $D/simple_menu_icons-which-link-setup.sh
drush php:eval '$s=\Drupal::entityTypeManager()->getStorage("menu_link_content");foreach($s->getQuery()->accessCheck(FALSE)->execute() as $id){$l=$s->load($id);$o=$l->link->first()->options??[];if(!empty($o["menu_icon"]))print "ICONLINK=".$l->getTitle()."\n";}'
bash $D/simple_menu_icons-which-link-cleanup.sh
echo "-- medium icon-uri --"
bash $D/simple_menu_icons-icon-uri-setup.sh
drush php:eval '$s=\Drupal::entityTypeManager()->getStorage("menu_link_content");foreach($s->getQuery()->accessCheck(FALSE)->condition("title","SMI URI Link")->execute() as $id){$l=$s->load($id);print "URI=".($l->link->first()->options["menu_icon"]["uri"]??"none")."\n";}'
bash $D/simple_menu_icons-icon-uri-cleanup.sh
echo "-- hard add-icon --"
bash $D/simple_menu_icons-add-icon-reset.sh
echo -n "empty(want FAIL): "; bash $D/simple_menu_icons-add-icon-verify.sh; echo "exit=$?"
drush php:eval '$s=\Drupal::entityTypeManager()->getStorage("menu_link_content");$id=reset($s->getQuery()->accessCheck(FALSE)->condition("title","SMI Task Link")->execute());$l=$s->load($id);$i=$l->link->first();$o=$i->options?:[];$o["menu_icon"]["uri"]="public://menu_icons/whatever.svg";$o["menu_icon"]["fid"]=0;$i->options=$o;$l->save();' >/dev/null 2>&1
echo -n "built(want PASS): "; bash $D/simple_menu_icons-add-icon-verify.sh; echo "exit=$?"
bash $D/simple_menu_icons-add-icon-reset.sh
echo -n "final reset(want FAIL): "; bash $D/simple_menu_icons-add-icon-verify.sh; echo "exit=$?"
bash $D/simple_menu_icons-add-icon-cleanup.sh
echo "-- hard set-specific --"
bash $D/simple_menu_icons-set-specific-reset.sh
echo -n "empty(want FAIL): "; bash $D/simple_menu_icons-set-specific-verify.sh; echo "exit=$?"
drush php:eval '$s=\Drupal::entityTypeManager()->getStorage("menu_link_content");$id=reset($s->getQuery()->accessCheck(FALSE)->condition("title","SMI Target Link")->execute());$l=$s->load($id);$i=$l->link->first();$o=$i->options?:[];$o["menu_icon"]["uri"]="public://menu_icons/smi_target.svg";$i->options=$o;$l->save();' >/dev/null 2>&1
echo -n "built(want PASS): "; bash $D/simple_menu_icons-set-specific-verify.sh; echo "exit=$?"
bash $D/simple_menu_icons-set-specific-reset.sh
echo -n "final reset(want FAIL): "; bash $D/simple_menu_icons-set-specific-verify.sh; echo "exit=$?"
bash $D/simple_menu_icons-set-specific-cleanup.sh

echo "======== VIEWS_JSON_SOURCE ========"
echo "-- medium cache-ttl --"
bash $D/views_json_source-cache-ttl-setup.sh
drush php:eval 'print "TTL=".\Drupal::config("views_json_source.settings")->get("cache_ttl")."\n";'
bash $D/views_json_source-cache-ttl-cleanup.sh
echo "-- medium view-apath --"
bash $D/views_json_source-view-apath-setup.sh
drush php:eval '$v=\Drupal\views\Entity\View::load("vjs_known");print "APATH=".($v->get("display")["default"]["display_options"]["query"]["options"]["row_apath"]??"none")."\n";'
bash $D/views_json_source-view-apath-cleanup.sh
echo "-- hard set-ttl --"
bash $D/views_json_source-set-ttl-reset.sh
echo -n "reset(want FAIL): "; bash $D/views_json_source-set-ttl-verify.sh; echo "exit=$?"
drush cset views_json_source.settings cache_ttl 3600 -y >/dev/null 2>&1
echo -n "built(want PASS): "; bash $D/views_json_source-set-ttl-verify.sh; echo "exit=$?"
bash $D/views_json_source-set-ttl-reset.sh
echo -n "final reset(want FAIL): "; bash $D/views_json_source-set-ttl-verify.sh; echo "exit=$?"
bash $D/views_json_source-set-ttl-cleanup.sh
echo "-- hard build-view --"
bash $D/views_json_source-build-view-reset.sh
echo -n "empty(want FAIL): "; bash $D/views_json_source-build-view-verify.sh; echo "exit=$?"
drush php:eval 'use Drupal\views\Entity\View; View::create(["id"=>"vjs_task","label"=>"VJS Task","base_table"=>"json","status"=>TRUE,"display"=>["default"=>["display_plugin"=>"default","id"=>"default","display_title"=>"Master","position"=>0,"display_options"=>["query"=>["type"=>"views_json_source_query","options"=>["json_file"=>"https://example.com/nodes.json","row_apath"=>"data/nodes","request_method"=>"get","show_errors"=>1]],"fields"=>["value"=>["id"=>"value","table"=>"json","field"=>"value","plugin_id"=>"views_json_source_field","key"=>"title"]]]]]])->save();' >/dev/null 2>&1
echo -n "built(want PASS): "; bash $D/views_json_source-build-view-verify.sh; echo "exit=$?"
bash $D/views_json_source-build-view-reset.sh
echo -n "final reset(want FAIL): "; bash $D/views_json_source-build-view-verify.sh; echo "exit=$?"
bash $D/views_json_source-build-view-cleanup.sh

echo "======== MIGRATE_CONDITIONS ========"
echo "-- medium switch-plugin --"
bash $D/migrate_conditions-switch-plugin-setup.sh
drush php:eval '$d=\Drupal::service("plugin.manager.migration")->getDefinition("configured_source_test");print "SWITCH=".($d["process"]["switch_test"]["plugin"]??"none")."\n";'
bash $D/migrate_conditions-switch-plugin-cleanup.sh
echo "-- medium map-condition --"
bash $D/migrate_conditions-map-condition-setup.sh
drush php:eval '$d=\Drupal::service("plugin.manager.migration")->getDefinition("in_migrate_map_test");print "FOUND=".($d["process"]["found"]["condition"]["plugin"]??"none")."\n";'
bash $D/migrate_conditions-map-condition-cleanup.sh
echo "-- hard eval-greater --"
bash $D/migrate_conditions-eval-greater-reset.sh
echo -n "empty(want FAIL): "; bash $D/migrate_conditions-eval-greater-verify.sh; echo "exit=$?"
drush php:eval '$m=\Drupal::service("plugin.manager.migrate_conditions.condition");$c=$m->createInstance("greater_than(3)");$r=$c->evaluate(5,new \Drupal\migrate\Row());\Drupal::state()->set("migrate_conditions_task1",$r);' >/dev/null 2>&1
echo -n "built(want PASS): "; bash $D/migrate_conditions-eval-greater-verify.sh; echo "exit=$?"
bash $D/migrate_conditions-eval-greater-reset.sh
echo -n "final reset(want FAIL): "; bash $D/migrate_conditions-eval-greater-verify.sh; echo "exit=$?"
bash $D/migrate_conditions-eval-greater-cleanup.sh
echo "-- hard eval-and --"
bash $D/migrate_conditions-eval-and-reset.sh
echo -n "empty(want FAIL): "; bash $D/migrate_conditions-eval-and-verify.sh; echo "exit=$?"
drush php:eval '$m=\Drupal::service("plugin.manager.migrate_conditions.condition");$c=$m->createInstance("and",["conditions"=>[["plugin"=>"greater_than","value"=>4],["plugin"=>"less_than","value"=>6]]]);$r=$c->evaluate(5,new \Drupal\migrate\Row());\Drupal::state()->set("migrate_conditions_task2",$r);' >/dev/null 2>&1
echo -n "built(want PASS): "; bash $D/migrate_conditions-eval-and-verify.sh; echo "exit=$?"
bash $D/migrate_conditions-eval-and-reset.sh
echo -n "final reset(want FAIL): "; bash $D/migrate_conditions-eval-and-verify.sh; echo "exit=$?"
bash $D/migrate_conditions-eval-and-cleanup.sh

echo "======== LIGHTNING_SCHEDULER ========"
echo "-- medium time-step --"
bash $D/lightning_scheduler-time-step-setup.sh
drush php:eval 'print "STEP=".\Drupal::config("lightning_scheduler.settings")->get("time_step")."\n";'
bash $D/lightning_scheduler-time-step-cleanup.sh
echo "-- medium past-dates --"
bash $D/lightning_scheduler-past-dates-setup.sh
drush php:eval 'print "PAST=".var_export(\Drupal::config("lightning_scheduler.settings")->get("allow_past_dates"),TRUE)."\n";'
bash $D/lightning_scheduler-past-dates-cleanup.sh
echo "-- hard set-step --"
bash $D/lightning_scheduler-set-step-reset.sh
echo -n "reset(want FAIL): "; bash $D/lightning_scheduler-set-step-verify.sh; echo "exit=$?"
drush cset lightning_scheduler.settings time_step 300 -y >/dev/null 2>&1
echo -n "built(want PASS): "; bash $D/lightning_scheduler-set-step-verify.sh; echo "exit=$?"
bash $D/lightning_scheduler-set-step-reset.sh
echo -n "final reset(want FAIL): "; bash $D/lightning_scheduler-set-step-verify.sh; echo "exit=$?"
bash $D/lightning_scheduler-set-step-cleanup.sh
echo "-- hard restrict --"
bash $D/lightning_scheduler-restrict-reset.sh
echo -n "reset(want FAIL): "; bash $D/lightning_scheduler-restrict-verify.sh; echo "exit=$?"
drush cset lightning_scheduler.settings time_step 3600 -y >/dev/null 2>&1
drush cset lightning_scheduler.settings allow_past_dates 0 -y >/dev/null 2>&1
echo -n "built(want PASS): "; bash $D/lightning_scheduler-restrict-verify.sh; echo "exit=$?"
bash $D/lightning_scheduler-restrict-reset.sh
echo -n "final reset(want FAIL): "; bash $D/lightning_scheduler-restrict-verify.sh; echo "exit=$?"
bash $D/lightning_scheduler-restrict-cleanup.sh
echo "### ALL DONE"
