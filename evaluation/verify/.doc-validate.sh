#!/usr/bin/env bash
cd /var/www/html/agent-module-documentation
for d in modules/fivestar/3.0.x modules/simple_menu_icons/3.1.x modules/views_json_source/2.0.x modules/migrate_conditions/2.2.x modules/lightning_scheduler/1.6.x; do
  bash scripts/validate-docs.sh "$d"
done
echo "=== eval tier counts ==="
for f in modules/fivestar/3.0.x modules/simple_menu_icons/3.1.x modules/views_json_source/2.0.x modules/migrate_conditions/2.2.x modules/lightning_scheduler/1.6.x; do
  php -r '$d=json_decode(file_get_contents($argv[1]."/eval/evals.json"),true); if($d===null){echo "BAD JSON ".$argv[1]."\n";exit;} $t=array_count_values(array_column($d["evals"],"difficulty")); echo $argv[1].": easy=".($t["easy"]??0)." medium=".($t["medium"]??0)." hard=".($t["hard"]??0)."\n";' "$f"
done
