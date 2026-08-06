<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# CiviMRF Core (cmrf_core) — agent index

Connects Drupal to a **CiviCRM instance over REST**. Submodules: `cmrf_views` (API calls as Views
sources), `cmrf_webform` (submissions into CiviCRM), `cmrf_call_report`, `cmrf_example`.
Version **2.1.16**. Core requirement `^8 || ^9 || ^10 || ^11`.

**The architecture is the point.** CiviCRM can be installed **inside** Drupal, sharing its database
and user table — the traditional deployment, and a tight coupling: CiviCRM's upgrade cycle becomes
Drupal's problem, the database holds both, and a Drupal major upgrade waits on CiviCRM. **CiviMRF
runs CiviCRM elsewhere** and talks to it over the API, so the two upgrade independently. Correct
where the CRM is the **system of record** and the website is one of several things using it.

**Three things for the deployment:**
1. **The API credentials are a grant over the organisation's CRM** — supporters, donors, members and
   their giving history. Environment variable, **Key** entity, and the **most restricted API user**
   CiviCRM will allow.
2. **Personal data crosses a network boundary on every call.** TLS, and the processing belongs in
   the privacy assessment.
3. **Remote calls on the request path are the site's response time.** Cache aggressively, and decide
   what a page shows when the CRM is unreachable — **it will be**, and "the membership page is
   blank" is a worse answer than a stale list.
