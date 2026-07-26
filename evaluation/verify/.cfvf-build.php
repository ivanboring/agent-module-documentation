<?php
use Drupal\field\Entity\FieldStorageConfig;
use Drupal\field\Entity\FieldConfig;
FieldStorageConfig::create(['field_name'=>'field_cf_vf','entity_type'=>'node','type'=>'custom','cardinality'=>1,
  'settings'=>['columns'=>['listing'=>['name'=>'listing','type'=>'viewfield','target_type'=>'view']]]])->save();
FieldConfig::create(['field_name'=>'field_cf_vf','entity_type'=>'node','bundle'=>'cf_vf_eval','label'=>'Sections'])->save();
print "built cf_vf viewfield col\n";
