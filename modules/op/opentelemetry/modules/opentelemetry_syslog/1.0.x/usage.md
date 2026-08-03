Submodule of OpenTelemetry that replaces Drupal core's syslog logger so the OpenTelemetry trace id can be embedded in each syslog line, letting you correlate raw syslog output with distributed traces.

---

Via a service provider (`OpentelemetrySyslogServiceProvider::alter()`) it swaps the class of the core `logger.syslog` service to `Drupal\opentelemetry_syslog\Logger\OpenTelemetrySysLog`, which makes a `!trace_id` token available in the syslog format string. A `hook_form_system_logging_settings_alter` adds help text on the core Logging settings form (`/admin/config/development/logging`) documenting the `!trace_id` placeholder, which you then include in the syslog format under core's Syslog settings. Depends on core `syslog` and the parent `opentelemetry` module. No permissions, config schema, plugins, or services of its own beyond the logger override.

---

- Include the current OpenTelemetry trace id in every syslog log line.
- Correlate syslog entries with traces in Jaeger/Tempo/Grafana by trace id.
- Add the `!trace_id` token to the core Syslog format string.
- Debug production issues by pivoting from a syslog line to its full trace.
- Keep using core syslog logging while gaining trace context.
- Ship trace-tagged logs to an external syslog/log aggregation pipeline.
- Bridge classic syslog-based ops tooling with OpenTelemetry observability.
- Avoid custom logger code to get trace ids into logs.
- Provide request-level correlation for log-based alerting.
- Enrich SIEM/log ingestion with trace identifiers.
- Trace-tag logs written to `/dev/log` or a remote syslog host.
- Group all log lines from one request by their shared trace id.
- Speed up incident triage by jumping from a syslog alert to the trace waterfall.
- Keep trace correlation even for code paths that log before/after the traced span.
- Standardize log-to-trace correlation across multiple Drupal sites shipping to one collector.
