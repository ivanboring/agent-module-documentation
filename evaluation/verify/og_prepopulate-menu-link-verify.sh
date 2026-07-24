#!/usr/bin/env bash
# Execution VERIFY: PASS when a main-menu link titled "OG Prepopulate Eval Link" points at
# /node/add/article and carries og_prepopulate's SHORT audience syntax ?og_audience=12
# (field machine name as the parameter, group entity id as the value). It must NOT use the
# parent module's nested edit[...] syntax. Prints PASS/FAIL; exit 0 pass / 1 fail.
set -uo pipefail
cd /var/www/html
out=$(drush php:eval '
  use Drupal\menu_link_content\Entity\MenuLinkContent;
  $ids = \Drupal::entityQuery("menu_link_content")->accessCheck(FALSE)
    ->condition("title", "OG Prepopulate Eval Link")->execute();
  $ok = FALSE; $seen = "none";
  foreach (MenuLinkContent::loadMultiple($ids) as $link) {
    $url = urldecode($link->getUrlObject()->toString());
    $seen = $link->getMenuName() . " :: " . $url;
    $ok = $link->getMenuName() === "main"
      && str_contains($url, "/node/add/article")
      && (bool) preg_match("/[?&]og_audience=12(&|$)/", $url)
      && !str_contains($url, "edit[");
    if ($ok) { break; }
  }
  print ($ok ? "PASS" : "FAIL") . " link=" . $seen . "\n";
' 2>/dev/null)
echo "$out"
echo "$out" | grep -q '^PASS' && exit 0 || exit 1
