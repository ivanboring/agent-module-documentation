<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
ACCESS Job Reporting posts completed TAPIS job metadata to the ACCESS-CI Allocations API so gateway usage is credited against allocations.
---
The module targets science-gateway sites that run compute jobs through the TAPIS `tapis_job`/`tapis_system` modules. When a job completes it assembles a metadata record (resource name, agent, job attributes) and POSTs it to the ACCESS-CI Allocations endpoint (default `https://allocations-api.access-ci.org/acdb/gateway/v2/job_attributes`). `AccessResourceFetcher` calls the API to suggest valid `xsederesourcename` values and falls back to a built-in list when the API is unreachable.

Configuration lives at `/admin/config/access/job-reporting` (`administer site configuration`). The API key can be stored either directly in module config or, preferably, referenced from a Key entity when the Key module is installed (`AccessResourceFetcher::fetch()` prefers the Key value). Outbound calls use the core Guzzle `http_client` with default TLS verification and a 10s timeout; the key is sent in the `XA-API-KEY` header and the agent name in `XA-AGENT`.
---
- Install to credit science-gateway compute jobs against ACCESS-CI allocations.
- Configure the Allocations API endpoint URL on the settings form.
- Store the ACCESS API key in module configuration.
- Reference the API key from a Key entity instead of plaintext config.
- Set the reporting agent name sent as the `XA-AGENT` header.
- Fetch the list of valid ACCESS resource names from the API.
- Fall back to built-in resource names when the API is offline.
- Report job attributes for a completed TAPIS job automatically.
- Integrate a Drupal-based science gateway with ACCESS-CI accounting.
- Override the default allocations endpoint for staging environments.
- Inspect the log channel `access_job_reporting` for failed submissions.
- Map local TAPIS systems to ACCESS resource identifiers.
- Verify connectivity to the allocations API before go-live.
- Send POST job_attributes records with `xsederesourcename`.
- Restrict configuration access to site administrators.
- Test key/agent header setup with a manual fetch.
- Diagnose why suggested resources return empty.
- Keep the API key out of exported configuration via Key module.
- Audit which jobs were reported to ACCESS-CI.
- Adjust the request timeout expectations for slow allocations responses.