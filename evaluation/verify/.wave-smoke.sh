#!/usr/bin/env bash
# Consolidated smoke harness for this wave's medium+hard eval scripts. Runs the ACTUAL .sh
# files. For medium: setup -> (discoverability shown) -> cleanup. For hard: reset ->
# verify(expect FAIL) -> build(simulate agent) -> verify(expect PASS) -> cleanup.
# Continue-on-error; every step is logged. Temp/deliverable scripts only touch namespaced
# artifacts. Run inside the container from /var/www/html.
cd /var/www/html
V=agent-module-documentation/evaluation/verify
line(){ echo "==================== $* ===================="; }
vr(){ bash "$V/$1"; echo "  [verify-exit=$?]"; }

########## field_hidden ##########
line "FH med-number"
bash $V/field_hidden-known-number-setup.sh
drush cget core.entity_form_display.node.article.default content.field_fh_count.type 2>/dev/null
bash $V/field_hidden-known-number-cleanup.sh
line "FH hard-token (expect FAIL then PASS)"
bash $V/field_hidden-make-hidden-reset.sh
vr field_hidden-make-hidden-verify.sh
drush php:eval '$fd=\Drupal::entityTypeManager()->getStorage("entity_form_display")->load("node.article.default");$fd->setComponent("field_fh_token",["type"=>"field_hidden_string_textfield","weight"=>52,"region"=>"content"])->save();'
vr field_hidden-make-hidden-verify.sh
bash $V/field_hidden-make-hidden-cleanup.sh
line "FH hard-score (expect FAIL then PASS)"
bash $V/field_hidden-make-hidden-number-reset.sh
vr field_hidden-make-hidden-number-verify.sh
drush php:eval '$fd=\Drupal::entityTypeManager()->getStorage("entity_form_display")->load("node.article.default");$fd->setComponent("field_fh_score",["type"=>"field_hidden_number","weight"=>53,"region"=>"content"])->save();'
vr field_hidden-make-hidden-number-verify.sh
bash $V/field_hidden-make-hidden-number-cleanup.sh

########## image_delta_formatter ##########
line "IDF med-gallery"
bash $V/image_delta_formatter-known-gallery-setup.sh
drush cget core.entity_view_display.node.article.default content.field_idf_gallery 2>/dev/null | grep -E 'type|deltas' | head
bash $V/image_delta_formatter-known-gallery-cleanup.sh
line "IDF med-promo"
bash $V/image_delta_formatter-known-promo-setup.sh
drush cget core.entity_view_display.node.article.default content.field_idf_promo.settings 2>/dev/null | head
bash $V/image_delta_formatter-known-promo-cleanup.sh
line "IDF hard-shots (expect FAIL then PASS)"
bash $V/image_delta_formatter-show-first-reset.sh
vr image_delta_formatter-show-first-verify.sh
drush php:eval '$vd=\Drupal::entityTypeManager()->getStorage("entity_view_display")->load("node.article.default");$vd->setComponent("field_idf_shots",["type"=>"image_delta_formatter","label"=>"hidden","weight"=>42,"region"=>"content","settings"=>["deltas"=>[0],"deltas_reversed"=>FALSE,"image_style"=>"","image_link"=>""]])->save();'
vr image_delta_formatter-show-first-verify.sh
bash $V/image_delta_formatter-show-first-cleanup.sh
line "IDF hard-lead (expect FAIL then PASS)"
bash $V/image_delta_formatter-first-two-reset.sh
vr image_delta_formatter-first-two-verify.sh
drush php:eval '$vd=\Drupal::entityTypeManager()->getStorage("entity_view_display")->load("node.article.default");$vd->setComponent("field_idf_lead",["type"=>"image_delta_formatter","label"=>"hidden","weight"=>43,"region"=>"content","settings"=>["deltas"=>[0,1],"deltas_reversed"=>FALSE,"image_style"=>"","image_link"=>""]])->save();'
vr image_delta_formatter-first-two-verify.sh
bash $V/image_delta_formatter-first-two-cleanup.sh

########## field_redirection ##########
line "FR med-dest"
bash $V/field_redirection-known-dest-setup.sh
drush cget core.entity_view_display.node.article.default content.field_fr_dest.settings.code 2>/dev/null
bash $V/field_redirection-known-dest-cleanup.sh
line "FR med-empty404"
bash $V/field_redirection-known-empty404-setup.sh
drush cget core.entity_view_display.node.article.default content.field_fr_go.settings 2>/dev/null | head
bash $V/field_redirection-known-empty404-cleanup.sh
line "FR hard-301 (expect FAIL then PASS)"
bash $V/field_redirection-set-301-reset.sh
vr field_redirection-set-301-verify.sh
drush php:eval '$vd=\Drupal::entityTypeManager()->getStorage("entity_view_display")->load("node.article.default");$vd->setComponent("field_fr_link",["type"=>"field_redirection_formatter","label"=>"hidden","weight"=>46,"region"=>"content","settings"=>["code"=>301,"404_if_empty"=>FALSE,"page_restrictions"=>0,"pages"=>""]])->save();'
vr field_redirection-set-301-verify.sh
bash $V/field_redirection-set-301-cleanup.sh
line "FR hard-302-404 (expect FAIL then PASS)"
bash $V/field_redirection-set-302-empty404-reset.sh
vr field_redirection-set-302-empty404-verify.sh
drush php:eval '$vd=\Drupal::entityTypeManager()->getStorage("entity_view_display")->load("node.article.default");$vd->setComponent("field_fr_temp",["type"=>"field_redirection_formatter","label"=>"hidden","weight"=>47,"region"=>"content","settings"=>["code"=>302,"404_if_empty"=>TRUE,"page_restrictions"=>0,"pages"=>""]])->save();'
vr field_redirection-set-302-empty404-verify.sh
bash $V/field_redirection-set-302-empty404-cleanup.sh

########## media_power_bi ##########
line "MPB med-source"
bash $V/media_power_bi-known-source-setup.sh
drush cget media.type.mpb_powerbi source 2>/dev/null
bash $V/media_power_bi-known-source-cleanup.sh
line "MPB med-field"
bash $V/media_power_bi-known-field-setup.sh
drush cget media.type.mpb_gov source_configuration.source_field 2>/dev/null
bash $V/media_power_bi-known-field-cleanup.sh
line "MPB hard-type (expect FAIL then PASS)"
bash $V/media_power_bi-create-type-reset.sh
vr media_power_bi-create-type-verify.sh
drush php:eval 'use Drupal\media\Entity\MediaType;use Drupal\field\Entity\FieldStorageConfig;use Drupal\field\Entity\FieldConfig;if(!FieldStorageConfig::loadByName("media","field_mpb_report")){FieldStorageConfig::create(["field_name"=>"field_mpb_report","entity_type"=>"media","type"=>"string_long"])->save();}if(!MediaType::load("mpb_report")){MediaType::create(["id"=>"mpb_report","label"=>"MPB Report","source"=>"media_power_bi","source_configuration"=>["source_field"=>"field_mpb_report"]])->save();}if(!FieldConfig::loadByName("media","mpb_report","field_mpb_report")){FieldConfig::create(["field_name"=>"field_mpb_report","entity_type"=>"media","bundle"=>"mpb_report","label"=>"URL"])->save();}'
vr media_power_bi-create-type-verify.sh
bash $V/media_power_bi-create-type-reset.sh
line "MPB hard-full (expect FAIL then PASS)"
bash $V/media_power_bi-create-full-reset.sh
vr media_power_bi-create-full-verify.sh
drush php:eval 'use Drupal\media\Entity\MediaType;use Drupal\field\Entity\FieldStorageConfig;use Drupal\field\Entity\FieldConfig;if(!FieldStorageConfig::loadByName("media","field_mpb_dash")){FieldStorageConfig::create(["field_name"=>"field_mpb_dash","entity_type"=>"media","type"=>"string_long"])->save();}if(!MediaType::load("mpb_dash")){MediaType::create(["id"=>"mpb_dash","label"=>"MPB Dash","source"=>"media_power_bi","source_configuration"=>["source_field"=>"field_mpb_dash"]])->save();}if(!FieldConfig::loadByName("media","mpb_dash","field_mpb_dash")){FieldConfig::create(["field_name"=>"field_mpb_dash","entity_type"=>"media","bundle"=>"mpb_dash","label"=>"URL"])->save();}'
vr media_power_bi-create-full-verify.sh
bash $V/media_power_bi-create-full-reset.sh

########## fullcalendar ##########
line "FC med-style"
bash $V/fullcalendar-known-style-setup.sh
drush php:eval '$v=\Drupal\views\Entity\View::load("fc_events");print $v?$v->get("display")["default"]["display_options"]["style"]["type"]:"missing";print "\n";'
bash $V/fullcalendar-known-style-cleanup.sh
line "FC med-agenda"
bash $V/fullcalendar-known-agenda-setup.sh
drush php:eval '$v=\Drupal\views\Entity\View::load("fc_agenda");print $v?$v->get("display")["default"]["display_options"]["style"]["type"]:"missing";print "\n";'
bash $V/fullcalendar-known-agenda-cleanup.sh
line "FC hard-cal (expect FAIL then PASS)"
bash $V/fullcalendar-create-view-reset.sh
vr fullcalendar-create-view-verify.sh
drush php:eval 'use Drupal\views\Entity\View;if(!View::load("fc_cal")){View::create(["id"=>"fc_cal","label"=>"FC Cal","base_table"=>"node_field_data","base_field"=>"nid","display"=>["default"=>["display_plugin"=>"default","id"=>"default","display_title"=>"Default","position"=>0,"display_options"=>["style"=>["type"=>"fullcalendar","options"=>[]],"row"=>["type"=>"fields"]]]]])->save();}'
vr fullcalendar-create-view-verify.sh
bash $V/fullcalendar-create-view-reset.sh
line "FC hard-sched (expect FAIL then PASS)"
bash $V/fullcalendar-create-sched-reset.sh
vr fullcalendar-create-sched-verify.sh
drush php:eval 'use Drupal\views\Entity\View;if(!View::load("fc_sched")){View::create(["id"=>"fc_sched","label"=>"FC Sched","base_table"=>"node_field_data","base_field"=>"nid","display"=>["default"=>["display_plugin"=>"default","id"=>"default","display_title"=>"Default","position"=>0,"display_options"=>["style"=>["type"=>"fullcalendar","options"=>[]],"row"=>["type"=>"fields"]]]]])->save();}'
vr fullcalendar-create-sched-verify.sh
bash $V/fullcalendar-create-sched-reset.sh

########## fullcalendar_legend ##########
line "FCL med-heading"
bash $V/fullcalendar_legend-known-heading-setup.sh
drush php:eval '$v=\Drupal\views\Entity\View::load("fcl_events");print $v?($v->get("display")["default"]["display_options"]["footer"]["fullcalendar_legend"]["heading_level"]??"none"):"missing";print "\n";'
bash $V/fullcalendar_legend-known-heading-cleanup.sh
line "FCL med-h2"
bash $V/fullcalendar_legend-known-h2-setup.sh
drush php:eval '$v=\Drupal\views\Entity\View::load("fcl_month");print $v?($v->get("display")["default"]["display_options"]["footer"]["fullcalendar_legend"]["heading_level"]??"none"):"missing";print "\n";'
bash $V/fullcalendar_legend-known-h2-cleanup.sh
line "FCL hard-legend (expect FAIL then PASS)"
bash $V/fullcalendar_legend-add-legend-reset.sh
vr fullcalendar_legend-add-legend-verify.sh
drush php:eval '$v=\Drupal\views\Entity\View::load("fcl_task");$d=&$v->getDisplay("default");$d["display_options"]["footer"]["fullcalendar_legend"]=["id"=>"fullcalendar_legend","table"=>"views","field"=>"fullcalendar_legend","plugin_id"=>"fullcalendar_legend","heading_level"=>"h3"];$v->save();'
vr fullcalendar_legend-add-legend-verify.sh
bash $V/fullcalendar_legend-add-legend-cleanup.sh
line "FCL hard-header (expect FAIL then PASS)"
bash $V/fullcalendar_legend-add-header-reset.sh
vr fullcalendar_legend-add-header-verify.sh
drush php:eval '$v=\Drupal\views\Entity\View::load("fcl_plan");$d=&$v->getDisplay("default");$d["display_options"]["header"]["fullcalendar_legend"]=["id"=>"fullcalendar_legend","table"=>"views","field"=>"fullcalendar_legend","plugin_id"=>"fullcalendar_legend","heading_level"=>"h3"];$v->save();'
vr fullcalendar_legend-add-header-verify.sh
bash $V/fullcalendar_legend-add-header-cleanup.sh

line "WAVE SMOKE DONE"
