Monitoring Test is a hidden test-fixture submodule that provides a controllable `test_sensor` plugin, several ready-made test sensor configs, a test queue worker and a test result class, used by the Monitoring module's automated tests.

---

The module ships a `TestSensorPlugin` (`#[SensorPlugin(id: 'test_sensor')]`) whose status/value/message/exception are driven by `State` (`monitoring_test.sensor_result_data`), so tests can force a sensor into any outcome; it implements `ExtendedInfoSensorPluginInterface::resultVerbose()`. It installs a set of `monitoring_sensor_config` entities via `config/install` — `test_sensor`, `test_sensor_exceeds`, `test_sensor_falls`, `test_sensor_inner`, `test_sensor_outer`, `test_sensor_cat_watchdog`, `test_sensor_integration`, `test_sensor_config`, `watchdog_aggregate_test` (and an optional `entity_aggregate_test`) — covering each threshold type and category. It also provides a `TestWorker` queue worker (to exercise the queue-size sensor) and a `TestSensorResult` result class, plus a `hook_module_implements_alter()` that can toggle its own `hook_requirements` via State. It is marked `hidden: TRUE` (Testing package) and depends on the base `monitoring` module; it has no UI, permissions, services or Drush of its own.

---

- Force a sensor into OK/WARNING/CRITICAL for automated tests via `State`.
- Provide a sensor with each threshold type (`exceeds`, `falls`, `inner`, `outer`) for testing.
- Exercise the queue-size sensor with the bundled `TestWorker` queue worker.
- Test category grouping with `test_sensor_cat_watchdog`.
- Test verbose sensor output through `resultVerbose()`.
- Provide a deterministic sensor for kernel/functional tests of the runner.
- Test the watchdog aggregator with `watchdog_aggregate_test`.
- Toggle the module's `hook_requirements` on/off via State to test requirements sensors.
- Supply a `TestSensorResult` result class for result-handling tests.
- Reproduce sensor-runner behavior deterministically when debugging.
- Validate threshold evaluation logic for each comparison type.
- Serve as a reference implementation of a simple `SensorPlugin`.
- Provide fixtures for the base module's test suite.
- Test sensor enable/disable/rebuild flows against known sensors.
- Test the disappeared-sensors logic by adding/removing test sensors.
- Exercise the integration sensor config (`test_sensor_integration`).
- Verify caching_time behavior with a controllable sensor value.
- Test config export/import of sensor entities using the shipped fixtures.
- Provide a known sensor id (`test_sensor`) for API examples.
