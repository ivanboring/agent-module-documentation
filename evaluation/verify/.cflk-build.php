<?php
use Drupal\field\Entity\FieldStorageConfig;
use Drupal\field\Entity\FieldConfig;
FieldStorageConfig::create(['field_name'=>'field_cf_lk','entity_type'=>'node','type'=>'custom','cardinality'=>1,
  'settings'=>['columns'=>['link'=>['name'=>'link','type'=>'uri']]]])->save();
FieldConfig::create(['field_name'=>'field_cf_lk','entity_type'=>'node','bundle'=>'cf_lk_eval','label'=>'Links'])->save();
$fd=\Drupal::service('entity_display.repository')->getFormDisplay('node','cf_lk_eval','default');
$fd->setComponent('field_cf_lk',['type'=>'custom_stacked','region'=>'content','weight'=>5,
  'settings'=>['fields'=>['link'=>['type'=>'linkit_url','linkit_profile'=>'default']]]])->save();
print "built cf_lk uri+linkit_url\n";
