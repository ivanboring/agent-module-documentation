#!/usr/bin/env bash
cd /var/www/html
drush php:eval '
  foreach (\Drupal::entityTypeManager()->getStorage("search_api_server")->loadMultiple() as $s) { print "server:".$s->id()." backend:".$s->getBackendId()."\n"; }
  foreach (\Drupal::entityTypeManager()->getStorage("search_api_index")->loadMultiple() as $i) { print "index:".$i->id()." datasources:".implode(",",$i->getDatasourceIds())."\n"; }
  // Try to build a search_api index entity in-memory to see if it triggers fatals.
  print "servers_indexes_listed\n";
'
