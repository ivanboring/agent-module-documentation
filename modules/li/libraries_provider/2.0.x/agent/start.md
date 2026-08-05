<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Libraries Provider (libraries_provider) — agent index

Lets the **site** choose how each external JS library is served — CDN, local copy, specific version
— rather than accepting what the declaring module hard-coded. Submodule `libraries_provider_ui`.
Version **2.0.4**. Core requirement `^10 || ^11`.

**Dependencies are substantial:** `hook_event_dispatcher` (`core_event_dispatcher ^4`) and
`autoservices ^1` — both architectural modules in their own right. Weigh that against the smaller
intervention: **`libraries-override`** in a theme handles the occasional single case.

**Why the module author's choice is not the site's:**
- a **CDN** means every page load depends on a third party being reachable, sends visitor IPs to
  that host, and needs a CSP allowance. (`redoc_field_formatter`, wave 70, loads Redoc from
  jsDelivr with **no integrity hash**.)
- a **local copy** is right for privacy and air-gapped environments, and makes the maintainer
  responsible for placing and updating the files.

**Reach for this when one of three concrete requirements applies:** a **CSP** that must enumerate
hosts; a **privacy/GDPR** position forbidding third-party requests; an **offline or restricted
network**. Otherwise `libraries-override` is enough.

Related: `external_script_sri` (wave 72) adds integrity hashes to whatever is served externally.
