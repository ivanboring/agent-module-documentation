<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Toastr renders Drupal's status messages as toast notifications — the small transient panels that slide in and fade out — instead of as a block of text at the top of the page.

---

Drupal's messages are rendered wherever the theme places the status-messages region, which on a long form means the confirmation appears above the fold while the user is looking at the bottom of the page. Toast notifications solve that by appearing in a fixed position and dismissing themselves, which is why they became the convention in application UIs. This module integrates the toastr.js library for that purpose: a settings form at `/admin/config/system/toastr` behind its own `administer toastr` permission controls position, timeout and behaviour, with `toastr.libraries.yml` supplying the assets. Dependencies are core only, with a range of `^9 || ^10 || ^11`. Two things belong in a recommendation. Accessibility: transient notifications must still reach assistive technology, which means an appropriate ARIA live region and a timeout long enough to read — a message that vanishes in three seconds is not available to someone using a screen reader or reading slowly, and error messages in particular should not auto-dismiss at all. And messages that matter — validation errors especially — are better left in the page where they persist and can be re-read.

---

- Show status messages as toast notifications.
- Confirm a save without scrolling to the top.
- Give an application-style message experience.
- Position notifications in a corner.
- Auto-dismiss informational messages.
- Keep errors visible until dismissed.
- Configure timeout and position centrally.
- Improve feedback on long forms.
- Match an admin theme's interaction style.
- Show AJAX operation results.
- Reduce layout shift from message blocks.
- Give editors clearer save confirmation.
- Style notifications consistently.
- Restrict message configuration by permission.
- Show a queued message after redirect.
- Improve feedback on a dashboard.
- Provide non-blocking notifications.
- Support a site still on Drupal 9.
