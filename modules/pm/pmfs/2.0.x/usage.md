<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Prevent Multiple Form Submissions blocks duplicate submissions of the same form on the server, rather than relying on JavaScript to disable the button.

---

Double submission is one of the oldest problems on the web and the usual mitigation is the weakest possible one: disable the submit button with JavaScript. That covers the impatient double-click and nothing else — it does not cover a slow response and a second click on a browser without the script running, a resubmitted POST after a back-navigation, a flaky connection where the request was received but the response was not, or anyone deliberately replaying the request. The consequences are concrete: two orders, two registrations, two payment attempts, two identical nodes an editor then has to reconcile. This module adds the **server-side** check, which is the only kind that works, with settings at `/admin/config/system/pmfs`. Version **2.0.0**, and note the packaging date of **2023** — an old release still declaring `^10 || ^11`, so verify behaviour rather than assuming maintenance. Two things determine how well it fits. **What counts as "the same submission"** is the whole design: a token per rendered form is the right primitive, since it distinguishes a genuine second submission from a resubmission of the same one, whereas matching on user plus form id plus a time window will block legitimate rapid entry by someone adding records in sequence. And **it is not a rate limiter**: the aim is idempotency for one form render, not throttling abuse, so a form that needs protection from automated flooding still needs core's flood control or something in front of the site.

---

- Prevent double-submitted orders.
- Stop duplicate registrations.
- Block resubmitted payment forms.
- Prevent duplicate nodes from one submission.
- Handle an impatient double-click.
- Cover browsers without JavaScript.
- Prevent back-button resubmission.
- Protect a webform from duplicates.
- Reduce reconciliation work.
- Stop duplicate comments.
- Protect a booking form.
- Handle a slow response safely.
- Prevent duplicate support tickets.
- Protect a survey from double entries.
- Reduce duplicate leads.
- Add server-side submit validation.
- Handle flaky connections.
- Improve data quality on forms.
