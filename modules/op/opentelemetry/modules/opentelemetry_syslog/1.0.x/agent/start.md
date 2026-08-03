# OpenTelemetry Syslog — agent index

Submodule of `opentelemetry`. Replaces core's syslog logger so the OpenTelemetry trace id is available
as a `!trace_id` token in the syslog format. Depends on core `syslog` + `opentelemetry`. No
permissions, schema, or plugins.

Key facts:
- `OpentelemetrySyslogServiceProvider::alter()` rewrites the class of core service `logger.syslog` →
  `Drupal\opentelemetry_syslog\Logger\OpenTelemetrySysLog`.
- `hook_form_system_logging_settings_alter` documents the `!trace_id` placeholder on
  `/admin/config/development/logging`; add `!trace_id` to core's Syslog **format** string to emit it.
- Nothing else to configure; trace context comes from the parent module's active request span.
