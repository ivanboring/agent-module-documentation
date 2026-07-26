#!/usr/bin/env bash
# Comprehensive smoke test for the 5 jwt submodules' medium/hard eval cases.
# Namespaced; none touch jwt.config. Run inside container via ddev exec.
cd /var/www/html
V=agent-module-documentation/evaluation/verify
pass(){ echo "  [OK] $1"; }

echo "############## jwt_auth_consumer ##############"
echo "== M1 blocked user =="
bash $V/jwt_auth_consumer-m1-setup.sh
drush php:eval '$u=user_load_by_name("jwtcons_blocked"); print "discover: exists=".($u?"y":"n")." blocked=".($u&&$u->isBlocked()?"y":"n")."\n";'
bash $V/jwt_auth_consumer-m1-cleanup.sh
drush php:eval 'print "baseline: user_gone=".(user_load_by_name("jwtcons_blocked")?"n":"y")."\n";'
echo "== M2 active user =="
bash $V/jwt_auth_consumer-m2-setup.sh
drush php:eval '$u=user_load_by_name("jwtcons_active"); print "discover: exists=".($u?"y":"n")." blocked=".($u&&$u->isBlocked()?"y":"n")."\n";'
bash $V/jwt_auth_consumer-m2-cleanup.sh
echo "== H1 enable module =="
bash $V/jwt_auth_consumer-h1-reset.sh
echo -n "verify empty (want FAIL exit1): "; bash $V/jwt_auth_consumer-h1-verify.sh; echo "exit=$?"
drush -y en jwt_auth_consumer >/dev/null 2>&1; drush cr >/dev/null 2>&1
echo -n "verify built (want PASS exit0): "; bash $V/jwt_auth_consumer-h1-verify.sh; echo "exit=$?"
bash $V/jwt_auth_consumer-h1-cleanup.sh
echo "== H2 unblock user =="
bash $V/jwt_auth_consumer-h2-reset.sh
echo -n "verify empty (want FAIL exit1): "; bash $V/jwt_auth_consumer-h2-verify.sh; echo "exit=$?"
drush php:eval '$u=user_load_by_name("jwtcons_task"); if($u){$u->activate();$u->save();}' >/dev/null 2>&1
echo -n "verify built (want PASS exit0): "; bash $V/jwt_auth_consumer-h2-verify.sh; echo "exit=$?"
bash $V/jwt_auth_consumer-h2-cleanup.sh

echo "############## jwt_auth_issuer ##############"
echo "== M1 login-response off =="
bash $V/jwt_auth_issuer-m1-setup.sh
drush php:eval 'print "discover: jwt_in_login_response=".var_export(\Drupal::config("jwt_auth_issuer.config")->get("jwt_in_login_response"),true)."\n";'
bash $V/jwt_auth_issuer-m1-cleanup.sh
drush php:eval 'print "baseline: jwt_in_login_response=".var_export(\Drupal::config("jwt_auth_issuer.config")->get("jwt_in_login_response"),true)."\n";'
echo "== M2 login-response on =="
bash $V/jwt_auth_issuer-m2-setup.sh
drush php:eval 'print "discover: jwt_in_login_response=".var_export(\Drupal::config("jwt_auth_issuer.config")->get("jwt_in_login_response"),true)."\n";'
bash $V/jwt_auth_issuer-m2-cleanup.sh
echo "== H1 turn off =="
bash $V/jwt_auth_issuer-h1-reset.sh
echo -n "verify empty (want FAIL exit1): "; bash $V/jwt_auth_issuer-h1-verify.sh; echo "exit=$?"
drush -y cset jwt_auth_issuer.config jwt_in_login_response 0 >/dev/null 2>&1
echo -n "verify built (want PASS exit0): "; bash $V/jwt_auth_issuer-h1-verify.sh; echo "exit=$?"
bash $V/jwt_auth_issuer-h1-cleanup.sh
echo "== H2 turn on =="
bash $V/jwt_auth_issuer-h2-reset.sh
echo -n "verify empty (want FAIL exit1): "; bash $V/jwt_auth_issuer-h2-verify.sh; echo "exit=$?"
drush -y cset jwt_auth_issuer.config jwt_in_login_response 1 >/dev/null 2>&1
echo -n "verify built (want PASS exit0): "; bash $V/jwt_auth_issuer-h2-verify.sh; echo "exit=$?"
bash $V/jwt_auth_issuer-h2-cleanup.sh

echo "############## jwt_path_auth ##############"
echo "== M1 known prefixes =="
bash $V/jwt_path_auth-m1-setup.sh
drush php:eval 'print "discover: ".json_encode(\Drupal::config("jwt_path_auth.config")->get("allowed_path_prefixes"))."\n";'
bash $V/jwt_path_auth-m1-cleanup.sh
drush php:eval 'print "baseline: ".json_encode(\Drupal::config("jwt_path_auth.config")->get("allowed_path_prefixes"))."\n";'
echo "== M2 single prefix =="
bash $V/jwt_path_auth-m2-setup.sh
drush php:eval 'print "discover: ".json_encode(\Drupal::config("jwt_path_auth.config")->get("allowed_path_prefixes"))."\n";'
bash $V/jwt_path_auth-m2-cleanup.sh
echo "== H1 add prefix =="
bash $V/jwt_path_auth-h1-reset.sh
echo -n "verify empty (want FAIL exit1): "; bash $V/jwt_path_auth-h1-verify.sh; echo "exit=$?"
drush php:eval '$c=\Drupal::configFactory()->getEditable("jwt_path_auth.config");$p=(array)$c->get("allowed_path_prefixes");$p[]="/jwtpa-task/";$c->set("allowed_path_prefixes",array_values($p))->save();' >/dev/null 2>&1
echo -n "verify built (want PASS exit0): "; bash $V/jwt_path_auth-h1-verify.sh; echo "exit=$?"
bash $V/jwt_path_auth-h1-cleanup.sh
echo "== H2 replace prefixes =="
bash $V/jwt_path_auth-h2-reset.sh
echo -n "verify empty (want FAIL exit1): "; bash $V/jwt_path_auth-h2-verify.sh; echo "exit=$?"
drush php:eval '\Drupal::configFactory()->getEditable("jwt_path_auth.config")->set("allowed_path_prefixes",["/downloads/"])->save();' >/dev/null 2>&1
echo -n "verify built (want PASS exit0): "; bash $V/jwt_path_auth-h2-verify.sh; echo "exit=$?"
bash $V/jwt_path_auth-h2-cleanup.sh

echo "############## jwt_oauth_ccf ##############"
echo "== M1 known client owner =="
bash $V/jwt_oauth_ccf-known-client-setup.sh
drush php:eval '$c=\Drupal::service("jwt_oauth_ccf.client_repository")->getClient("jwtccf_eval_client"); print "discover: uid=".var_export($c->uid??null,true)."\n";'
bash $V/jwt_oauth_ccf-known-client-cleanup.sh
echo "== M2 report client id =="
bash $V/jwt_oauth_ccf-report-client-setup.sh
drush php:eval 'print "discover: ".json_encode(array_keys(\Drupal::service("jwt_oauth_ccf.client_repository")->getUserClients(1)))."\n";'
bash $V/jwt_oauth_ccf-report-client-cleanup.sh
echo "== H1 create client =="
bash $V/jwt_oauth_ccf-create-client-reset.sh
echo -n "verify empty (want FAIL exit1): "; bash $V/jwt_oauth_ccf-create-client-verify.sh; echo "exit=$?"
drush php:eval '\Drupal::service("jwt_oauth_ccf.client_repository")->createClient(1,"jwtccf_task",NULL,"jwtccf_task_client");' >/dev/null 2>&1
echo -n "verify built (want PASS exit0): "; bash $V/jwt_oauth_ccf-create-client-verify.sh; echo "exit=$?"
bash $V/jwt_oauth_ccf-create-client-cleanup.sh
echo "== H2 revoke client =="
bash $V/jwt_oauth_ccf-revoke-client-reset.sh
echo -n "verify present (want FAIL exit1): "; bash $V/jwt_oauth_ccf-revoke-client-verify.sh; echo "exit=$?"
drush php:eval '\Drupal::service("jwt_oauth_ccf.client_repository")->deleteClient("jwtccf_del_client");' >/dev/null 2>&1
echo -n "verify built (want PASS exit0): "; bash $V/jwt_oauth_ccf-revoke-client-verify.sh; echo "exit=$?"
bash $V/jwt_oauth_ccf-revoke-client-cleanup.sh

echo "############## users_jwt ##############"
echo "== M1 known key owner =="
bash $V/users_jwt-known-key-setup.sh
drush php:eval '$k=\Drupal::service("users_jwt.key_repository")->getKey("usersjwt_eval_kid"); $u=$k?\Drupal\user\Entity\User::load($k->uid):null; print "discover: owner=".($u?$u->getAccountName():"none")."\n";'
bash $V/users_jwt-known-key-cleanup.sh
echo "== M2 max-expiration =="
bash $V/users_jwt-max-expiration-setup.sh
drush php:eval 'print "discover: max_expiration=".var_export(\Drupal::config("users_jwt.config")->get("max_expiration"),true)."\n";'
bash $V/users_jwt-max-expiration-cleanup.sh
echo "== H1 register key =="
bash $V/users_jwt-register-key-reset.sh
echo -n "verify empty (want FAIL exit1): "; bash $V/users_jwt-register-key-verify.sh; echo "exit=$?"
drush php:eval '\Drupal::service("users_jwt.key_repository")->saveKey(1,"usersjwt_task_kid","RS256","-----BEGIN PUBLIC KEY-----\nMOCKTASK\n-----END PUBLIC KEY-----");' >/dev/null 2>&1
echo -n "verify built (want PASS exit0): "; bash $V/users_jwt-register-key-verify.sh; echo "exit=$?"
bash $V/users_jwt-register-key-cleanup.sh
echo "== H2 cap lifetime =="
bash $V/users_jwt-cap-lifetime-reset.sh
echo -n "verify empty (want FAIL exit1): "; bash $V/users_jwt-cap-lifetime-verify.sh; echo "exit=$?"
drush -y cset users_jwt.config max_expiration 3600 >/dev/null 2>&1
echo -n "verify built (want PASS exit0): "; bash $V/users_jwt-cap-lifetime-verify.sh; echo "exit=$?"
bash $V/users_jwt-cap-lifetime-cleanup.sh
echo "############## SMOKE DONE ##############"
