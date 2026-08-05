<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Extended Logger writes Drupal log entries as **structured records with custom metadata**, to a destination that suits the environment — database, file, syslog, or stdout/stderr for a container.

---

Drupal's dblog was designed for a single server with a database and an admin UI. A containerised deployment wants logs on stdout for the platform to collect; a log-aggregation stack wants JSON with consistent fields it can index; and both want more context than message plus severity — request id, user, route, deployment version. This module provides that: `ExtendedLoggerEntry` models the entry, `src/Event` lets other code contribute metadata, and `softcreatr/jsonpath` allows fields to be selected by JSONPath expression, so what gets logged is configurable rather than fixed. `adhocore/json-fixer` repairs malformed JSON before output — a pragmatic touch, since a log line that breaks the aggregator's parser is worse than a missing field. Two submodules cover the ends: **extended_logger_db** for database storage and **extended_logger_fallback** for when the primary destination is unavailable, which matters because a logger that fails silently is worse than none. Settings live at `/admin/config/development/extended-logger` behind `administer extended_logger configuration`. Requirements are PHP 8.0+ and core `^9.4 || ^10 || ^11`; the release is 1.3.0-beta2. The standard caution applies: log entries carry user input, IPs and request paths, so shipping them to an aggregator is a personal-data flow that needs a retention policy.

---

- Write Drupal logs to stdout in a container.
- Emit structured JSON logs for an aggregator.
- Add request or deployment metadata to entries.
- Send logs to syslog.
- Select log fields with a JSONPath expression.
- Keep logging working when a destination fails.
- Replace dblog on a containerised site.
- Correlate Drupal logs with platform logs.
- Index logs in Elasticsearch or Loki.
- Add a trace id to every entry.
- Reduce database load from dblog.
- Log to a file for a legacy pipeline.
- Contribute metadata from a custom module.
- Standardise log format across services.
- Support a Kubernetes deployment.
- Fall back to the database if syslog is down.
- Include the route name in every entry.
- Meet an observability requirement.
