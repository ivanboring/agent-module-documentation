#!/usr/bin/env bash
V=agent-module-documentation/evaluation/verify
cd /var/www/html
echo "=== MED widget: setup ==="; bash $V/field_hidden-known-widget-setup.sh
echo "-- discover (expect field_hidden_string_textfield):"; drush cget core.entity_form_display.node.article.default content.field_fh_secret.type 2>/dev/null
echo "=== MED widget: cleanup ==="; bash $V/field_hidden-known-widget-cleanup.sh
echo "-- after cleanup (expect empty/error):"; drush cget core.entity_form_display.node.article.default content.field_fh_secret.type 2>/dev/null || echo "(gone)"
echo "=== MED number: setup ==="; bash $V/field_hidden-known-number-setup.sh
echo "-- discover (expect field_hidden_number):"; drush cget core.entity_form_display.node.article.default content.field_fh_count.type 2>/dev/null
echo "=== MED number: cleanup ==="; bash $V/field_hidden-known-number-cleanup.sh
echo "=== HARD token: reset ==="; bash $V/field_hidden-make-hidden-reset.sh
echo "-- verify empty (expect FAIL/exit1):"; bash $V/field_hidden-make-hidden-verify.sh; echo "exit=$?"
echo "-- build: switch to hidden widget"
drush php:eval '$fd=\Drupal::entityTypeManager()->getStorage("entity_form_display")->load("node.article.default");$fd->setComponent("field_fh_token",["type"=>"field_hidden_string_textfield","weight"=>52,"region"=>"content"])->save();'
echo "-- verify built (expect PASS/exit0):"; bash $V/field_hidden-make-hidden-verify.sh; echo "exit=$?"
echo "=== HARD token: cleanup ==="; bash $V/field_hidden-make-hidden-cleanup.sh
echo "=== HARD number: reset ==="; bash $V/field_hidden-make-hidden-number-reset.sh
echo "-- verify empty (expect FAIL/exit1):"; bash $V/field_hidden-make-hidden-number-verify.sh; echo "exit=$?"
echo "-- build: switch to hidden number widget"
drush php:eval '$fd=\Drupal::entityTypeManager()->getStorage("entity_form_display")->load("node.article.default");$fd->setComponent("field_fh_score",["type"=>"field_hidden_number","weight"=>53,"region"=>"content"])->save();'
echo "-- verify built (expect PASS/exit0):"; bash $V/field_hidden-make-hidden-number-verify.sh; echo "exit=$?"
echo "=== HARD number: cleanup ==="; bash $V/field_hidden-make-hidden-number-cleanup.sh
echo "=== DONE field_hidden smoke ==="
