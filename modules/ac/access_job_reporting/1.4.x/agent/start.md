<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# ACCESS Job Reporting (access_job_reporting) — agent index

**Reports completed TAPIS job metadata to the ACCESS-CI Allocations API for gateway allocation accounting.**

- **Version:** 1.4.x  •  **Core:** ^10 || ^11  •  **Package:** TAPIS
- **Depends on:** user, tapis_job, tapis_system
- **Route:** `access_job_reporting.settings` → `/admin/config/access/job-reporting` (`administer site configuration`)
- **Services:** `AccessJobReporter` (builds/sends the report), `AccessResourceFetcher` (queries suggested resource names; prefers a Key entity, else config `api_key`)
- **Outbound:** POST to `allocations-api.access-ci.org` via core `http_client`, TLS verified, `XA-API-KEY`/`XA-AGENT` headers, 10s timeout.

**Security:** single admin config route (`administer site configuration`); no anonymous or mutating public endpoints. API key may be stored in plaintext config as a fallback — prefer the Key module reference.
