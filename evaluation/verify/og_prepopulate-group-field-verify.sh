#!/usr/bin/env bash
# Execution VERIFY: PASS when Article has an entity reference field field_ogp_group targeting
# nodes AND its widget on core.entity_form_display.node.article.default is an autocomplete
# (entity_reference_autocomplete or ..._tags) — the widget shape og_prepopulate/prepopulate can
# fill via a target_id query parameter. Prints PASS/FAIL; exit 0 pass / 1 fail.
set -uo pipefail
cd /var/www/html
out=$(drush php:eval '
  use Drupal\field\Entity\FieldConfig;
  $fc = FieldConfig::loadByName("node", "article", "field_ogp_group");
  $fd = \Drupal::entityTypeManager()->getStorage("entity_form_display")->load("node.article.default");
  $c = $fd ? $fd->getComponent("field_ogp_group") : NULL;
  $type = $fc ? $fc->getType() : "none";
  $target = $fc ? ($fc->getSetting("target_type") ?: $fc->getFieldStorageDefinition()->getSetting("target_type")) : "none";
  $widget = $c["type"] ?? "none";
  $ok = $fc && $type === "entity_reference" && $target === "node"
    && in_array($widget, ["entity_reference_autocomplete", "entity_reference_autocomplete_tags"], TRUE);
  print ($ok ? "PASS" : "FAIL") . " type=" . $type . " target=" . $target . " widget=" . $widget . "\n";
' 2>/dev/null)
echo "$out"
echo "$out" | grep -q '^PASS' && exit 0 || exit 1
