<?php
use Drupal\node\Entity\NodeType;
use Drupal\node\Entity\Node;
use Drupal\field\Entity\FieldStorageConfig;
use Drupal\field\Entity\FieldConfig;

if (!NodeType::load('cfai_probe')) { NodeType::create(['type' => 'cfai_probe', 'name' => 'CFAI Probe'])->save(); }
if (!FieldStorageConfig::loadByName('node', 'field_cfai_p')) {
  FieldStorageConfig::create(['field_name' => 'field_cfai_p', 'entity_type' => 'node', 'type' => 'custom', 'cardinality' => 1,
    'settings' => ['columns' => ['body' => ['name' => 'body', 'type' => 'string_long']]]])->save();
}
if (!FieldConfig::loadByName('node', 'cfai_probe', 'field_cfai_p')) {
  FieldConfig::create(['field_name' => 'field_cfai_p', 'entity_type' => 'node', 'bundle' => 'cfai_probe', 'label' => 'P',
    'settings' => ['field_settings' => ['body' => ['translatable' => TRUE]]]])->save();
}
$n = Node::create(['type' => 'cfai_probe', 'title' => 'p', 'field_cfai_p' => ['body' => 'AIEXTRACTME_marker']]);
$n->save();
$ex = \Drupal::service('plugin.manager.text_extractor')->createInstance('custom_field');
$out = $ex->extract($n, 'field_cfai_p');
print "extract_translatable_true=" . json_encode($out) . "\n";

// Now flip translatable off and re-extract
$fc = FieldConfig::loadByName('node', 'cfai_probe', 'field_cfai_p');
$s = $fc->getSettings(); $s['field_settings']['body']['translatable'] = FALSE; $fc->set('settings', $s)->save();
\Drupal::service('plugin.manager.text_extractor')->clearCachedDefinitions();
$n2 = Node::load($n->id());
$ex2 = \Drupal::service('plugin.manager.text_extractor')->createInstance('custom_field');
$out2 = $ex2->extract($n2, 'field_cfai_p');
print "extract_translatable_false=" . json_encode($out2) . "\n";

// cleanup
$n->delete();
if ($fc = FieldConfig::loadByName('node', 'cfai_probe', 'field_cfai_p')) { $fc->delete(); }
if ($fs = FieldStorageConfig::loadByName('node', 'field_cfai_p')) { $fs->delete(); }
if ($t = NodeType::load('cfai_probe')) { $t->delete(); }
print "probe_cleaned\n";
