<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
CiviCRM Autologout Bridge fixes premature session timeouts for users working in CiviCRM. The Automated Logout module resets its idle timer from Drupal page requests and JS-detected interaction, but CiviCRM's AJAX-heavy screens generate lots of activity that never triggers a full Drupal page load, so users get logged out mid-task.

The module implements `hook_page_attachments` to attach a lightweight JS behaviour (`civicrm_autologout_bridge/bridge`) on CiviCRM pages for authenticated users only. The JS detects genuine interaction (clicks, keypresses, scrolling) and feeds it into Automated Logout's timer-reset mechanism, keeping the session alive while the user is actually working. CiviCRM pages are identified by the `civicrm.*` route name or a path starting with `/civicrm`. Anonymous users are skipped (no session to keep alive), and cache contexts (`user.roles:authenticated`, `route`, `url.path`) are declared so the attachment varies correctly.

There is no configuration, route or permission — enable it alongside Automated Logout and CiviCRM and it works. It only extends the keep-alive signal; it does not change logout timeouts, which remain governed by the Automated Logout module.
---
Enable it with Automated Logout + CiviCRM; CiviCRM interaction then keeps the session alive automatically.
---
- Stop CiviCRM users being logged out during long AJAX-heavy tasks
- Keep the session alive while editing a CiviCRM contact
- Count clicks/keypresses/scrolling in CiviCRM as activity
- Bridge CiviCRM interaction into Automated Logout's timer
- Apply keep-alive only on CiviCRM routes/paths
- Limit the behaviour to authenticated users
- Preserve correct render caching via declared cache contexts
- Avoid changing global logout timeout while fixing CiviCRM timeouts
- Improve UX for staff doing bulk CiviCRM data entry
- Detect CiviCRM pages by route name or `/civicrm` path
- Deploy without any configuration
- Pair with Automated Logout's existing warning dialog
- Reduce lost work from unexpected logouts in CiviCRM
- Keep non-CiviCRM pages on standard autologout behaviour
- Deploy alongside CiviCRM without touching logout timeout config