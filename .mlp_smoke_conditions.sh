#!/usr/bin/env bash
# Consolidated smoke test for all 9 memory_limit_policy condition submodules.
# Runs inside the DDEV container (drush called directly). Prints PASS/FAIL per check.
set -uo pipefail
cd /var/www/html
VD=agent-module-documentation/evaluation/verify
fail=0

# exec build config per submodule (matches *-exec-verify.sh expectations)
build_php() {
  case "$1" in
    role)         echo '["id"=>"role","negate"=>FALSE,"roles"=>["authenticated"=>"authenticated"]]';;
    path)         echo '["id"=>"path","negate"=>FALSE,"paths"=>"/node/*"]';;
    route)        echo '["id"=>"route","negate"=>FALSE,"routes"=>["user.login"]]';;
    http_method)  echo '["id"=>"http_method","negate"=>FALSE,"methods"=>["put"]]';;
    http_header)  echo '["id"=>"http_header","negate"=>FALSE,"header_name"=>"X-Api-Client","header_value"=>"mobile","match_mode"=>"contains"]';;
    query_param)  echo '["id"=>"query_param","negate"=>FALSE,"query_param"=>"export"]';;
    domain)       echo '["id"=>"domain","negate"=>FALSE,"domains"=>["example.org"]]';;
    env_variable) echo '["id"=>"env_variable","negate"=>FALSE,"name"=>"APP_ENV","values"=>["migration"]]';;
    drush)        echo '["id"=>"drush","negate"=>FALSE,"drush_commands"=>"migrate:import"]';;
  esac
}

for key in role path route http_method http_header query_param domain env_variable drush; do
  mod="memory_limit_policy_$key"
  kid="mlp_${key}_known"
  xid="mlp_${key}_exec"
  echo "########## $mod ##########"

  # ---- MEDIUM ----
  bash $VD/$mod-known-setup.sh >/dev/null
  disc=$(drush php:eval "\$e=\\Drupal::entityTypeManager()->getStorage('memory_limit_policy')->load('$kid');print \$e?('found:'.\$e->getMemory().':'.json_encode(\$e->getConstraints()[0])):'MISSING';" 2>/dev/null)
  if echo "$disc" | grep -q '^found:300M'; then echo "  MEDIUM setup discoverable: OK"; else echo "  MEDIUM setup discoverable: FAIL ($disc)"; fail=1; fi
  bash $VD/$mod-known-cleanup.sh >/dev/null
  gone=$(drush php:eval "print \\Drupal::entityTypeManager()->getStorage('memory_limit_policy')->load('$kid')?'STILL':'gone';" 2>/dev/null)
  if [ "$gone" = "gone" ]; then echo "  MEDIUM cleanup restores baseline: OK"; else echo "  MEDIUM cleanup: FAIL ($gone)"; fail=1; fi

  # ---- HARD ----
  bash $VD/$mod-exec-reset.sh >/dev/null
  bash $VD/$mod-exec-verify.sh >/dev/null 2>&1; rc=$?
  if [ $rc -eq 1 ]; then echo "  HARD verify FAILs on empty: OK"; else echo "  HARD verify on empty rc=$rc: FAIL (should be 1)"; fail=1; fi
  # build
  conf=$(build_php "$key")
  drush php:eval "\\Drupal::entityTypeManager()->getStorage('memory_limit_policy')->create(['id'=>'$xid','label'=>'exec $key','memory'=>'768M','status'=>TRUE,'weight'=>7,'policy_constraints'=>[$conf]])->save();" >/dev/null 2>&1
  bash $VD/$mod-exec-verify.sh >/dev/null 2>&1; rc=$?
  if [ $rc -eq 0 ]; then echo "  HARD verify PASSes after build: OK"; else echo "  HARD verify after build rc=$rc: FAIL (should be 0)"; fail=1; fi
  bash $VD/$mod-exec-reset.sh >/dev/null
  bash $VD/$mod-exec-verify.sh >/dev/null 2>&1; rc=$?
  if [ $rc -eq 1 ]; then echo "  HARD reset leaves clean: OK"; else echo "  HARD final reset rc=$rc: FAIL"; fail=1; fi
done

echo "=============================="
[ $fail -eq 0 ] && echo "ALL CONDITION SMOKE TESTS PASSED" || echo "SOME SMOKE TESTS FAILED"
exit $fail
