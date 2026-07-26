#!/usr/bin/env bash
cd /var/www/html
drush php:eval '
  use Drupal\node\Entity\NodeType;
  use Drupal\field\Entity\FieldStorageConfig;
  use Drupal\field\Entity\FieldConfig;
  use Drupal\search_api\Entity\Index;
  if (!NodeType::load("cfsapi_eval")) { NodeType::create(["type"=>"cfsapi_eval","name"=>"CF SAPI Eval"])->save(); }
  if (!FieldStorageConfig::loadByName("node","field_cfsapi_desc")) {
    FieldStorageConfig::create(["field_name"=>"field_cfsapi_desc","entity_type"=>"node","type"=>"custom","cardinality"=>1,
      "settings"=>["columns"=>["body"=>["name"=>"body","type"=>"string_long"],"title"=>["name"=>"title","type"=>"string","max_length"=>255]]]])->save();
  }
  if (!FieldConfig::loadByName("node","cfsapi_eval","field_cfsapi_desc")) {
    FieldConfig::create(["field_name"=>"field_cfsapi_desc","entity_type"=>"node","bundle"=>"cfsapi_eval","label"=>"Desc"])->save();
  }
  // Create a minimal index on entity:node (no server -> not indexed to a backend, fine for config).
  $index = Index::load("cfsapi_index");
  if (!$index) {
    $index = Index::create([
      "id"=>"cfsapi_index","name"=>"CF SAPI Index","status"=>TRUE,
      "datasource_settings"=>["entity:node"=>[]],
      "tracker_settings"=>["default"=>[]],
    ]);
    $index->save();
  }
  // Add a field for the string_long column property via FieldsHelper (type computed by search_api + the mapping subscriber).
  $fh = \Drupal::getContainer()->get("search_api.fields_helper");
  try {
    $field = $fh->createFieldFromProperty($index, NULL, "entity:node", "field_cfsapi_desc:body", "cfsapi_body");
    print "createFieldFromProperty ok type=".$field->getType()."\n";
  } catch (\Throwable $e) { print "createField ERR: ".get_class($e).": ".$e->getMessage()."\n"; }
'
