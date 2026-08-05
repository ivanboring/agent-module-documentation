<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
BugHerd embeds the BugHerd feedback overlay in a Drupal site, letting reviewers click an element on a page and file an issue against it, with role-based control over who sees the widget.

---

Gathering feedback on a site in build normally happens by email and screenshot, with descriptions like "the thing on the right of the second page" that then have to be translated into something a developer can act on. BugHerd inverts that: the reviewer annotates the page itself, and the resulting ticket carries the element, the URL, the browser and the screen size automatically. This module supplies the Drupal side — a settings form at `/admin/config/development/bugherd` behind `administer bugherd`, plus an `access bugherd` permission deciding **which roles see the overlay**, which is the important control, since the widget is client-side JavaScript that should not be shipped to the public. The module can also suppress it on admin pages. Its `core_version_requirement` is `^10 || ^11 || ^12`, already covering Drupal 12. Two things worth stating: the overlay is a third-party script loaded into the page, so it is a data-flow and consent consideration on any environment where real visitors might encounter it; and the correct configuration is to grant `access bugherd` to reviewer roles only, and ideally to enable the module on staging rather than production.

---

- Collect visual feedback during a site build.
- Let reviewers annotate pages directly.
- Capture browser and screen details automatically.
- Show the overlay only to reviewer roles.
- Hide the widget on admin pages.
- Reduce ambiguity in feedback.
- Speed up a UAT round.
- Gather client feedback on staging.
- File issues against a specific element.
- Avoid screenshot-and-email review.
- Restrict the overlay by permission.
- Support a design review process.
- Track feedback alongside development.
- Improve QA turnaround.
- Collect accessibility observations.
- Support a distributed review team.
- Keep feedback linked to URLs.
- Disable the overlay for the public.
