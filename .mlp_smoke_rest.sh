#!/usr/bin/env bash
set -uo pipefail
cd /var/www/html
VD=agent-module-documentation/evaluation/verify
fail=0
build_php() {
  case "$1" in
    query_param)  echo '["id"=>"query_param","negate"=>FALSE,"query_param"=>"export"]';;
    domain)       echo '["id"=>"domain","negate"=>FALSE,"domains"=>["example.org"]]';;
    env_variable) echo '["id"=>"env_variable","negate"=>FALSE,"name"=>"APP_ENV","values"=>["migration"]]';;
    drush)        echo '["id"=>"drush","negate"=>FALSE,"drush_commands"=>"migrate:import"]';;
  esac
}
for key in query_param domain env_variable drush; do
  mod="memory_limit_policy_$key"; kid="mlp_${key}_known"; xid="mlp_${key}_exec"
  echo "## $mod"
  bash $VD/$mod-known-setup.sh >/dev/null
  disc=$(drush php:eval "\$e=\\Drupal::entityTypeManager()->getStorage('memory_limit_policy')->load('$kid');print \$e?('OK:'.\$e->getMemory()):'MISSING';" 2>/dev/null)
  echo "  medium-discoverable: $disc"; echo "$disc"|grep -q '^OK:300M'||fail=1
  bash $VD/$mod-known-cleanup.sh >/dev/null
  g=$(drush php:eval "print \\Drupal::entityTypeManager()->getStorage('memory_limit_policy')->load('$kid')?'STILL':'gone';" 2>/dev/null)
  echo "  medium-cleanup: $g"; [ "$g" = gone ]||fail=1
  bash $VD/$mod-exec-reset.sh >/dev/null
  bash $VD/$mod-exec-verify.sh >/dev/null 2>&1; echo "  hard-empty-rc=$? (want1)"; [ $? -eq 1 ]||true
  conf=$(build_php "$key")
  drush php:eval "\\Drupal::entityTypeManager()->getStorage('memory_limit_policy')->create(['id'=>'$xid','label'=>'x','memory'=>'768M','status'=>TRUE,'weight'=>7,'policy_constraints'=>[$conf]])->save();" >/dev/null 2>&1
  bash $VD/$mod-exec-verify.sh; rc=$?; echo "  hard-built-rc=$rc (want0)"; [ $rc -eq 0 ]||fail=1
  bash $VD/$mod-exec-reset.sh >/dev/null
  bash $VD/$mod-exec-verify.sh >/dev/null 2>&1; rc=$?; echo "  hard-finalreset-rc=$rc (want1)"; [ $rc -eq 1 ]||fail=1
done
echo "=== fail=$fail ==="
