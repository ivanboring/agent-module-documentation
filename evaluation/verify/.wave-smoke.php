<?php
// Single-bootstrap smoke: exercises the exact create/set/check/delete operations that this
// wave's setup/reset/verify/cleanup scripts perform, in one Drupal request. Prints a matrix.
// Namespaced artifacts only. Cleans everything up.

use Drupal\field\Entity\FieldStorageConfig;
use Drupal\field\Entity\FieldConfig;
use Drupal\media\Entity\MediaType;
use Drupal\views\Entity\View;

$etm = \Drupal::entityTypeManager();
$R = [];
function ok(&$R, $id, $cond, $detail = '') { $R[] = ($cond ? 'PASS ' : 'FAIL ') . $id . ($detail ? "  [$detail]" : ''); }

$fd = function () use ($etm) { return $etm->getStorage('entity_form_display')->load('node.article.default'); };
$vd = function () use ($etm) { return $etm->getStorage('entity_view_display')->load('node.article.default'); };
function mkfield($type, $name, $label, $card = 1) {
  if (!FieldStorageConfig::loadByName('node', $name)) {
    FieldStorageConfig::create(['field_name' => $name, 'entity_type' => 'node', 'type' => $type, 'cardinality' => $card])->save();
  }
  if (!FieldConfig::loadByName('node', 'article', $name)) {
    FieldConfig::create(['field_name' => $name, 'entity_type' => 'node', 'bundle' => 'article', 'label' => $label])->save();
  }
}
function rmfield($name) {
  if ($fc = FieldConfig::loadByName('node', 'article', $name)) { $fc->delete(); }
  if ($fs = FieldStorageConfig::loadByName('node', $name)) { $fs->delete(); }
}

try { // ---------- field_hidden ----------
  mkfield('string', 'field_fh_secret', 'Secret');
  $fd()->setComponent('field_fh_secret', ['type' => 'field_hidden_string_textfield', 'weight' => 50, 'region' => 'content'])->save();
  ok($R, 'FH-med-widget setup', ($fd()->getComponent('field_fh_secret')['type'] ?? '') === 'field_hidden_string_textfield');
  rmfield('field_fh_secret');
  ok($R, 'FH-med-widget cleanup', $fd()->getComponent('field_fh_secret') === NULL);

  mkfield('integer', 'field_fh_count', 'Count');
  $fd()->setComponent('field_fh_count', ['type' => 'field_hidden_number', 'weight' => 51, 'region' => 'content'])->save();
  ok($R, 'FH-med-number setup', ($fd()->getComponent('field_fh_count')['type'] ?? '') === 'field_hidden_number');
  rmfield('field_fh_count');

  // hard token: reset (non-hidden) -> FAIL -> build -> PASS -> cleanup
  mkfield('string', 'field_fh_token', 'Token');
  $fd()->setComponent('field_fh_token', ['type' => 'string_textfield', 'weight' => 52, 'region' => 'content'])->save();
  ok($R, 'FH-hard-token verify-empty=FAIL', ($fd()->getComponent('field_fh_token')['type'] ?? '') !== 'field_hidden_string_textfield');
  $fd()->setComponent('field_fh_token', ['type' => 'field_hidden_string_textfield', 'weight' => 52, 'region' => 'content'])->save();
  ok($R, 'FH-hard-token verify-built=PASS', ($fd()->getComponent('field_fh_token')['type'] ?? '') === 'field_hidden_string_textfield');
  rmfield('field_fh_token');

  mkfield('integer', 'field_fh_score', 'Score');
  $fd()->setComponent('field_fh_score', ['type' => 'number', 'weight' => 53, 'region' => 'content'])->save();
  ok($R, 'FH-hard-score verify-empty=FAIL', ($fd()->getComponent('field_fh_score')['type'] ?? '') !== 'field_hidden_number');
  $fd()->setComponent('field_fh_score', ['type' => 'field_hidden_number', 'weight' => 53, 'region' => 'content'])->save();
  ok($R, 'FH-hard-score verify-built=PASS', ($fd()->getComponent('field_fh_score')['type'] ?? '') === 'field_hidden_number');
  rmfield('field_fh_score');
} catch (\Throwable $e) { ok($R, 'FH EXCEPTION', FALSE, $e->getMessage()); }

try { // ---------- image_delta_formatter ----------
  mkfield('image', 'field_idf_gallery', 'Gallery', -1);
  $vd()->setComponent('field_idf_gallery', ['type' => 'image_delta_formatter', 'label' => 'hidden', 'weight' => 40, 'region' => 'content', 'settings' => ['deltas' => [0, 2], 'deltas_reversed' => FALSE, 'image_style' => '', 'image_link' => '']])->save();
  $c = $vd()->getComponent('field_idf_gallery');
  ok($R, 'IDF-med-gallery setup', ($c['type'] ?? '') === 'image_delta_formatter' && ($c['settings']['deltas'] ?? []) == [0, 2]);
  rmfield('field_idf_gallery');

  mkfield('image', 'field_idf_promo', 'Promo', -1);
  $vd()->setComponent('field_idf_promo', ['type' => 'image_delta_formatter', 'label' => 'hidden', 'weight' => 41, 'region' => 'content', 'settings' => ['deltas' => [0], 'deltas_reversed' => TRUE, 'image_style' => '', 'image_link' => '']])->save();
  ok($R, 'IDF-med-promo reversed', (bool) ($vd()->getComponent('field_idf_promo')['settings']['deltas_reversed'] ?? FALSE) === TRUE);
  rmfield('field_idf_promo');

  mkfield('image', 'field_idf_shots', 'Shots', -1);
  $vd()->setComponent('field_idf_shots', ['type' => 'image', 'label' => 'hidden', 'weight' => 42, 'region' => 'content', 'settings' => ['image_style' => '', 'image_link' => '']])->save();
  $c = $vd()->getComponent('field_idf_shots');
  ok($R, 'IDF-hard-shots verify-empty=FAIL', !(($c['type'] ?? '') === 'image_delta_formatter' && in_array(0, (array) ($c['settings']['deltas'] ?? []))));
  $vd()->setComponent('field_idf_shots', ['type' => 'image_delta_formatter', 'label' => 'hidden', 'weight' => 42, 'region' => 'content', 'settings' => ['deltas' => [0], 'deltas_reversed' => FALSE, 'image_style' => '', 'image_link' => '']])->save();
  $c = $vd()->getComponent('field_idf_shots');
  ok($R, 'IDF-hard-shots verify-built=PASS', ($c['type'] ?? '') === 'image_delta_formatter' && in_array(0, (array) ($c['settings']['deltas'] ?? [])));
  rmfield('field_idf_shots');

  mkfield('image', 'field_idf_lead', 'Lead', -1);
  $vd()->setComponent('field_idf_lead', ['type' => 'image', 'label' => 'hidden', 'weight' => 43, 'region' => 'content', 'settings' => ['image_style' => '', 'image_link' => '']])->save();
  $c = $vd()->getComponent('field_idf_lead');
  ok($R, 'IDF-hard-lead verify-empty=FAIL', ($c['type'] ?? '') !== 'image_delta_formatter');
  $vd()->setComponent('field_idf_lead', ['type' => 'image_delta_formatter', 'label' => 'hidden', 'weight' => 43, 'region' => 'content', 'settings' => ['deltas' => [0, 1], 'deltas_reversed' => FALSE, 'image_style' => '', 'image_link' => '']])->save();
  $d = (array) ($vd()->getComponent('field_idf_lead')['settings']['deltas'] ?? []);
  ok($R, 'IDF-hard-lead verify-built=PASS', in_array(0, $d) && in_array(1, $d));
  rmfield('field_idf_lead');
} catch (\Throwable $e) { ok($R, 'IDF EXCEPTION', FALSE, $e->getMessage()); }

try { // ---------- field_redirection ----------
  mkfield('link', 'field_fr_dest', 'Dest');
  $vd()->setComponent('field_fr_dest', ['type' => 'field_redirection_formatter', 'label' => 'hidden', 'weight' => 44, 'region' => 'content', 'settings' => ['code' => 302, '404_if_empty' => FALSE, 'page_restrictions' => 1, 'pages' => 'admin/*']])->save();
  ok($R, 'FR-med-dest code=302', (int) ($vd()->getComponent('field_fr_dest')['settings']['code'] ?? 0) === 302);
  rmfield('field_fr_dest');

  mkfield('link', 'field_fr_go', 'Go');
  $vd()->setComponent('field_fr_go', ['type' => 'field_redirection_formatter', 'label' => 'hidden', 'weight' => 45, 'region' => 'content', 'settings' => ['code' => 301, '404_if_empty' => TRUE, 'page_restrictions' => 0, 'pages' => '']])->save();
  ok($R, 'FR-med-go 404_if_empty', (bool) ($vd()->getComponent('field_fr_go')['settings']['404_if_empty'] ?? FALSE) === TRUE);
  rmfield('field_fr_go');

  mkfield('link', 'field_fr_link', 'Link');
  $vd()->setComponent('field_fr_link', ['type' => 'link', 'label' => 'above', 'weight' => 46, 'region' => 'content', 'settings' => []])->save();
  ok($R, 'FR-hard-301 verify-empty=FAIL', ($vd()->getComponent('field_fr_link')['type'] ?? '') !== 'field_redirection_formatter');
  $vd()->setComponent('field_fr_link', ['type' => 'field_redirection_formatter', 'label' => 'hidden', 'weight' => 46, 'region' => 'content', 'settings' => ['code' => 301, '404_if_empty' => FALSE, 'page_restrictions' => 0, 'pages' => '']])->save();
  $c = $vd()->getComponent('field_fr_link');
  ok($R, 'FR-hard-301 verify-built=PASS', ($c['type'] ?? '') === 'field_redirection_formatter' && (int) $c['settings']['code'] === 301);
  rmfield('field_fr_link');

  mkfield('link', 'field_fr_temp', 'Temp');
  $vd()->setComponent('field_fr_temp', ['type' => 'link', 'label' => 'above', 'weight' => 47, 'region' => 'content', 'settings' => []])->save();
  ok($R, 'FR-hard-302 verify-empty=FAIL', ($vd()->getComponent('field_fr_temp')['type'] ?? '') !== 'field_redirection_formatter');
  $vd()->setComponent('field_fr_temp', ['type' => 'field_redirection_formatter', 'label' => 'hidden', 'weight' => 47, 'region' => 'content', 'settings' => ['code' => 302, '404_if_empty' => TRUE, 'page_restrictions' => 0, 'pages' => '']])->save();
  $c = $vd()->getComponent('field_fr_temp');
  ok($R, 'FR-hard-302 verify-built=PASS', ($c['type'] ?? '') === 'field_redirection_formatter' && (int) $c['settings']['code'] === 302 && (bool) $c['settings']['404_if_empty'] === TRUE);
  rmfield('field_fr_temp');
} catch (\Throwable $e) { ok($R, 'FR EXCEPTION', FALSE, $e->getMessage()); }

try { // ---------- media_power_bi ----------
  $mkmt = function ($id, $field) {
    if (!FieldStorageConfig::loadByName('media', $field)) { FieldStorageConfig::create(['field_name' => $field, 'entity_type' => 'media', 'type' => 'string_long'])->save(); }
    if (!MediaType::load($id)) { MediaType::create(['id' => $id, 'label' => strtoupper($id), 'source' => 'media_power_bi', 'source_configuration' => ['source_field' => $field]])->save(); }
    if (!FieldConfig::loadByName('media', $id, $field)) { FieldConfig::create(['field_name' => $field, 'entity_type' => 'media', 'bundle' => $id, 'label' => 'URL'])->save(); }
  };
  $rmmt = function ($id, $field) {
    if ($fc = FieldConfig::loadByName('media', $id, $field)) { $fc->delete(); }
    if ($mt = MediaType::load($id)) { $mt->delete(); }
    if ($fs = FieldStorageConfig::loadByName('media', $field)) { $fs->delete(); }
  };
  $mkmt('mpb_powerbi', 'field_mpb_pbi');
  ok($R, 'MPB-med-source', MediaType::load('mpb_powerbi')->getSource()->getPluginId() === 'media_power_bi');
  $rmmt('mpb_powerbi', 'field_mpb_pbi');

  $mkmt('mpb_gov', 'field_mpb_gov');
  $mt = MediaType::load('mpb_gov');
  $sf = $mt->getSource()->getConfiguration()['source_field'] ?? '';
  ok($R, 'MPB-med-field', $sf === 'field_mpb_gov' && FieldStorageConfig::loadByName('media', $sf)->getType() === 'string_long');
  $rmmt('mpb_gov', 'field_mpb_gov');

  $rmmt('mpb_report', 'field_mpb_report');
  ok($R, 'MPB-hard-type verify-empty=FAIL', MediaType::load('mpb_report') === NULL);
  $mkmt('mpb_report', 'field_mpb_report');
  ok($R, 'MPB-hard-type verify-built=PASS', MediaType::load('mpb_report')->getSource()->getPluginId() === 'media_power_bi');
  $rmmt('mpb_report', 'field_mpb_report');

  $rmmt('mpb_dash', 'field_mpb_dash');
  ok($R, 'MPB-hard-full verify-empty=FAIL', MediaType::load('mpb_dash') === NULL);
  $mkmt('mpb_dash', 'field_mpb_dash');
  $mt = MediaType::load('mpb_dash');
  $sf = $mt->getSource()->getConfiguration()['source_field'] ?? '';
  ok($R, 'MPB-hard-full verify-built=PASS', $mt->getSource()->getPluginId() === 'media_power_bi' && FieldStorageConfig::loadByName('media', $sf)->getType() === 'string_long');
  $rmmt('mpb_dash', 'field_mpb_dash');
} catch (\Throwable $e) { ok($R, 'MPB EXCEPTION', FALSE, $e->getMessage()); }

$mkview = function ($id, $extra = []) {
  if (View::load($id)) { View::load($id)->delete(); }
  $style_opts = $extra['style_options'] ?? [];
  $disp = ['display_plugin' => 'default', 'id' => 'default', 'display_title' => 'Default', 'position' => 0,
    'display_options' => ['style' => ['type' => 'fullcalendar', 'options' => $style_opts], 'row' => ['type' => 'fields']]];
  if (!empty($extra['footer_legend'])) {
    $disp['display_options']['footer']['fullcalendar_legend'] = ['id' => 'fullcalendar_legend', 'table' => 'views', 'field' => 'fullcalendar_legend', 'plugin_id' => 'fullcalendar_legend', 'heading_level' => $extra['footer_legend']];
  }
  View::create(['id' => $id, 'label' => strtoupper($id), 'base_table' => 'node_field_data', 'base_field' => 'nid', 'display' => ['default' => $disp]])->save();
};
$style_of = function ($id) { $v = View::load($id); return $v ? ($v->get('display')['default']['display_options']['style']['type'] ?? 'none') : 'missing'; };
$has_legend = function ($id) {
  $v = View::load($id); if (!$v) { return FALSE; }
  foreach ($v->get('display') as $d) {
    foreach (['header', 'footer', 'empty'] as $rg) {
      foreach (($d['display_options'][$rg] ?? []) as $k => $h) {
        if (($h['plugin_id'] ?? ($h['id'] ?? $k)) === 'fullcalendar_legend') { return TRUE; }
      }
    }
  }
  return FALSE;
};

try { // ---------- fullcalendar ----------
  $mkview('fc_events');
  ok($R, 'FC-med-style', $style_of('fc_events') === 'fullcalendar');
  View::load('fc_events')->delete();

  $mkview('fc_agenda', ['style_options' => ['list_view' => TRUE]]);
  ok($R, 'FC-med-agenda', $style_of('fc_agenda') === 'fullcalendar');
  View::load('fc_agenda')->delete();

  if (View::load('fc_cal')) { View::load('fc_cal')->delete(); }
  ok($R, 'FC-hard-cal verify-empty=FAIL', $style_of('fc_cal') !== 'fullcalendar');
  $mkview('fc_cal');
  ok($R, 'FC-hard-cal verify-built=PASS', $style_of('fc_cal') === 'fullcalendar');
  View::load('fc_cal')->delete();

  if (View::load('fc_sched')) { View::load('fc_sched')->delete(); }
  ok($R, 'FC-hard-sched verify-empty=FAIL', $style_of('fc_sched') !== 'fullcalendar');
  $mkview('fc_sched');
  ok($R, 'FC-hard-sched verify-built=PASS', $style_of('fc_sched') === 'fullcalendar');
  View::load('fc_sched')->delete();
} catch (\Throwable $e) { ok($R, 'FC EXCEPTION', FALSE, $e->getMessage()); }

try { // ---------- fullcalendar_legend ----------
  $mkview('fcl_events', ['style_options' => ['colors' => ['color_bundle' => ['article' => ['color' => '#f00']]]], 'footer_legend' => 'h4']);
  ok($R, 'FCL-med-heading h4', (View::load('fcl_events')->get('display')['default']['display_options']['footer']['fullcalendar_legend']['heading_level'] ?? '') === 'h4');
  View::load('fcl_events')->delete();

  $mkview('fcl_month', ['style_options' => ['colors' => ['color_bundle' => ['article' => ['color' => '#0f0']]]], 'footer_legend' => 'h2']);
  ok($R, 'FCL-med-h2', (View::load('fcl_month')->get('display')['default']['display_options']['footer']['fullcalendar_legend']['heading_level'] ?? '') === 'h2');
  View::load('fcl_month')->delete();

  $mkview('fcl_task', ['style_options' => ['colors' => ['color_bundle' => ['article' => ['color' => '#00f']]]]]);
  ok($R, 'FCL-hard-legend verify-empty=FAIL', $has_legend('fcl_task') === FALSE);
  $v = View::load('fcl_task'); $d = &$v->getDisplay('default');
  $d['display_options']['footer']['fullcalendar_legend'] = ['id' => 'fullcalendar_legend', 'table' => 'views', 'field' => 'fullcalendar_legend', 'plugin_id' => 'fullcalendar_legend', 'heading_level' => 'h3'];
  $v->save();
  ok($R, 'FCL-hard-legend verify-built=PASS', $has_legend('fcl_task') === TRUE);
  View::load('fcl_task')->delete();

  $mkview('fcl_plan', ['style_options' => ['colors' => ['color_bundle' => ['article' => ['color' => '#333']]]]]);
  ok($R, 'FCL-hard-header verify-empty=FAIL', $has_legend('fcl_plan') === FALSE);
  $v = View::load('fcl_plan'); $d = &$v->getDisplay('default');
  $d['display_options']['header']['fullcalendar_legend'] = ['id' => 'fullcalendar_legend', 'table' => 'views', 'field' => 'fullcalendar_legend', 'plugin_id' => 'fullcalendar_legend', 'heading_level' => 'h3'];
  $v->save();
  ok($R, 'FCL-hard-header verify-built=PASS', $has_legend('fcl_plan') === TRUE);
  View::load('fcl_plan')->delete();
} catch (\Throwable $e) { ok($R, 'FCL EXCEPTION', FALSE, $e->getMessage()); }

print "\n==== WAVE SMOKE MATRIX ====\n" . implode("\n", $R) . "\n";
$fails = count(array_filter($R, fn($l) => str_starts_with($l, 'FAIL')));
print "\nTOTAL: " . count($R) . "  FAILS: $fails\n";
print "==== WAVE SMOKE DONE ====\n";
