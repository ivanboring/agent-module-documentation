#!/usr/bin/env bash
# Introspection SETUP: create a group-style entity reference field (field_ogp_audience) on
# Article with an autocomplete widget plus a node to reference, so the agent must inspect the
# live site to derive the prepopulate query string for it. Idempotent. Exit 0.
set -uo pipefail
cd /var/www/html
drush php:eval '
  use Drupal\field\Entity\FieldStorageConfig;
  use Drupal\field\Entity\FieldConfig;
  use Drupal\node\Entity\Node;
  if (!FieldStorageConfig::loadByName("node", "field_ogp_audience")) {
    FieldStorageConfig::create([
      "field_name" => "field_ogp_audience", "entity_type" => "node",
      "type" => "entity_reference", "settings" => ["target_type" => "node"],
    ])->save();
  }
  if (!FieldConfig::loadByName("node", "article", "field_ogp_audience")) {
    FieldConfig::create([
      "field_name" => "field_ogp_audience", "entity_type" => "node", "bundle" => "article",
      "label" => "Group audience",
      "settings" => ["handler" => "default:node", "handler_settings" => ["target_bundles" => ["article" => "article"]]],
    ])->save();
  }
  $fd = \Drupal::entityTypeManager()->getStorage("entity_form_display")->load("node.article.default");
  $fd->setComponent("field_ogp_audience", [
    "type" => "entity_reference_autocomplete", "weight" => 64, "region" => "content",
  ])->save();
  $ids = \Drupal::entityQuery("node")->accessCheck(FALSE)->condition("title", "OG Prepopulate Eval Group")->execute();
  if (!$ids) {
    Node::create(["type" => "article", "title" => "OG Prepopulate Eval Group", "status" => 1])->save();
  }
' >/dev/null 2>&1
drush cr >/dev/null 2>&1
echo "setup: node.article has field_ogp_audience (entity_reference_autocomplete -> node)"
exit 0
