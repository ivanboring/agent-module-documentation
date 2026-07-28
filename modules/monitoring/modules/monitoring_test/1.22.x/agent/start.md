# Monitoring Test — agent index

Hidden **test-fixture** submodule for Monitoring. Provides a controllable `test_sensor` plugin, several
test `monitoring_sensor_config` entities, a test queue worker and a test result class. `hidden: TRUE`,
Testing package. Depends on `monitoring`. No UI/permissions/services/Drush of its own.

Key facts:
- `TestSensorPlugin` (`#[SensorPlugin(id: 'test_sensor')]`) — status/value/message driven by State key
  `monitoring_test.sensor_result_data`; implements `resultVerbose()`.
- Ships sensor configs (`config/install`): `test_sensor`, `test_sensor_exceeds`, `test_sensor_falls`,
  `test_sensor_inner`, `test_sensor_outer`, `test_sensor_cat_watchdog`, `test_sensor_integration`,
  `test_sensor_config`, `watchdog_aggregate_test` (+ optional `entity_aggregate_test`).
- `TestWorker` queue worker; `TestSensorResult` result class; State-toggled `hook_requirements`.
- How sensors/plugins work in general: `../../../1.22.x/agent/plugins/sensor-plugins.md`.
