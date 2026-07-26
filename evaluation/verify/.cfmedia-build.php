<?php
use Drupal\field\Entity\FieldStorageConfig;
use Drupal\field\Entity\FieldConfig;
FieldStorageConfig::create(['field_name'=>'field_cfmedia_task','entity_type'=>'node','type'=>'custom','cardinality'=>1,
  'settings'=>['columns'=>['asset'=>['name'=>'asset','type'=>'entity_reference','target_type'=>'media']]]])->save();
FieldConfig::create(['field_name'=>'field_cfmedia_task','entity_type'=>'node','bundle'=>'cfmedia_eval','label'=>'Task'])->save();
print "built cfmedia_task media ref\n";
