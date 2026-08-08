<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Bootstrap Site Alert renders site-wide alert banners using Bootstrap's alert styling — a maintenance notice, an emergency message, a promotional banner — with dismiss behaviour backed by a cookie.

---

Every site eventually needs to put a banner in front of everyone: "scheduled maintenance tonight", "our office is closed", "new feature launched". Doing it ad hoc means a block and some custom markup; doing it well means dismissible, styled, and controllable by non-developers. This module provides that as a managed feature — alerts are content an editor creates, rendered in Bootstrap alert styling, and dismissible by the visitor (the dismissal remembered via a **js_cookie** dependency).

It defines two permissions — `administer bootstrap site alerts` and `view bootstrap site alerts` — so who may create alerts and who sees them are explicit, which matters if some alerts are for authenticated users only. The Bootstrap dependency is stylistic: the alerts emit Bootstrap classes, so on a non-Bootstrap theme they need the classes given meaning, as with any Bootstrap-oriented module.

For operational and editorial messaging it is a tidy, permission-controlled tool. Confirm the theme renders Bootstrap alert classes, and set the view permission if alerts should not be universal.

---

- Show a site-wide alert banner.
- Announce scheduled maintenance.
- Post an emergency notice.
- Display a promotional banner.
- Let editors create alerts.
- Make alerts dismissible.
- Remember dismissal via a cookie.
- Style alerts with Bootstrap.
- Control who may create alerts.
- Control who sees alerts.
- Show an alert to authenticated users only.
- Post an operational message.
- Provide managed site messaging.
- Place alerts site-wide.
- Confirm Bootstrap classes render.
- Restrict alert administration.
- Announce an outage.
- Give non-developers banner control.
- Show a launch announcement.
- Manage alerts as content.