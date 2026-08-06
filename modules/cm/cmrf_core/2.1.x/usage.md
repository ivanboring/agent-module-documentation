<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
CiviMRF Core connects Drupal to a CiviCRM instance over CiviCRM's REST API, with submodules exposing the results to Views and Webform.

---

The architecture is the point and distinguishes this from the older approach. CiviCRM can be installed **inside** a Drupal site, sharing its database and user table, which is how it was traditionally deployed and which couples the two systems tightly: CiviCRM's upgrade cycle becomes Drupal's problem, the database grows to hold both, and a Drupal major upgrade waits on CiviCRM. **CiviMRF** takes the other route — CiviCRM runs elsewhere, Drupal talks to it over the API, and the two are upgraded independently. For an organisation whose CRM is the system of record and whose website is one of several things using it, that separation is correct. The submodules are what make it usable rather than a library: `cmrf_views` turns API calls into Views sources so a membership list or an event listing is built with the ordinary tools, `cmrf_webform` posts submissions into CiviCRM, and `cmrf_call_report` records what was called. Version **2.1.16** on `^8` through `^11`. Three things belong in the deployment. **The API credentials are a grant over the organisation's CRM**, which holds its supporters, donors, members and their giving history — environment variable, Key entity, and the most restricted API user CiviCRM will allow. **Personal data crosses a network boundary on every call**, so the connection needs TLS and the processing needs to be in the privacy assessment. And **remote calls on the request path are the site's response time**, so cache aggressively and decide what a page shows when the CRM is unreachable — because it will be, and "the membership page is blank" is a worse answer than a stale list.

---

- Connect Drupal to an external CiviCRM.
- Build a membership list from CiviCRM.
- Post webform submissions to a CRM.
- Show CiviCRM events in a view.
- Decouple CiviCRM from the website.
- Upgrade Drupal independently of CiviCRM.
- Display donor data on a site.
- Build a supporter directory from the CRM.
- Log CiviCRM API calls.
- Show a contact's details from CiviCRM.
- Register event attendance from a form.
- Build a campaign page from CRM data.
- Share one CRM across several sites.
- Show membership status to a user.
- Submit a donation enquiry to CiviCRM.
- Build a report from CRM data.
- Integrate a charity's CRM and website.
- Query CiviCRM from Views.
