#!/usr/bin/env bash
set -uo pipefail
cd /var/www/html
VD=agent-module-documentation/evaluation/verify
echo "## ai_agents MEDIUM"
bash $VD/memory_limit_policy_ai_agents-agent-config-setup.sh >/dev/null
v=$(drush php:eval 'print \Drupal::config("ai_agents.ai_agent.memory_limit_policy_agent")->get("max_loops");' 2>/dev/null)
echo "  discoverable max_loops=$v (want 9)"
bash $VD/memory_limit_policy_ai_agents-agent-config-cleanup.sh >/dev/null
v=$(drush php:eval 'print \Drupal::config("ai_agents.ai_agent.memory_limit_policy_agent")->get("max_loops");' 2>/dev/null)
echo "  after cleanup max_loops=$v (want 5)"
echo "## ai_agents HARD"
bash $VD/memory_limit_policy_ai_agents-build-reset.sh >/dev/null
bash $VD/memory_limit_policy_ai_agents-build-verify.sh >/dev/null 2>&1; echo "  empty-rc=$? (want1)"
drush php:eval '\Drupal::entityTypeManager()->getStorage("memory_limit_policy")->create(["id"=>"mlp_ai_exec","label"=>"AI created","memory"=>"640M","status"=>TRUE,"weight"=>0,"policy_constraints"=>[]])->save();' >/dev/null 2>&1
bash $VD/memory_limit_policy_ai_agents-build-verify.sh; echo "  built-rc=$? (want0)"
bash $VD/memory_limit_policy_ai_agents-build-reset.sh >/dev/null
bash $VD/memory_limit_policy_ai_agents-build-verify.sh >/dev/null 2>&1; echo "  finalreset-rc=$? (want1)"
