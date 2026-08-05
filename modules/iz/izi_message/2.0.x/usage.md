<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Izi Message restyles Drupal's status messages as light, responsive notification panels, replacing the block of text that core renders at the top of the page.

---

Drupal renders messages wherever the theme places the status-messages region, which on a long form means a confirmation appears above the fold while the user is looking at the bottom of the page — the same problem `toastr` addressed in wave 66, approached with a different library and a lighter footprint. The module is small: a settings form at `/admin/config/development/izi_message/settings` under `administer site configuration`, a stylesheet, `src/Utility` helpers and `config/install` defaults, with no dependencies beyond core and a range of `^9.3 || ^10 || ^11`. The considerations are the same as for any transient-message treatment, and they are accessibility rather than aesthetics: a message that appears and disappears must be in an appropriate ARIA live region to reach a screen reader, the timeout must be long enough to read, and **error and validation messages should not auto-dismiss at all** — those are the ones a user needs to re-read while correcting a form. A common and sensible compromise is to apply the treatment to the admin theme only, so editors get the improved confirmation experience while front-end validation messages keep core's persistent behaviour.

---

- Show status messages as light notifications.
- Confirm a save without scrolling up.
- Improve feedback on long forms.
- Give an application-style message experience.
- Configure message position and timeout.
- Keep errors visible until dismissed.
- Reduce layout shift from message blocks.
- Style messages to match a theme.
- Improve editor feedback after saving.
- Show AJAX operation results clearly.
- Apply the treatment to the admin theme only.
- Reduce visual weight of confirmations.
- Improve a dashboard's feedback.
- Show queued messages after a redirect.
- Provide non-blocking notifications.
- Match a modern admin interface.
- Improve mobile message display.
- Support a site still on Drupal 9.3.
