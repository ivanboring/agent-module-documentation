<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Speculative Loading enables the browser Speculation Rules API to prerender or prefetch pages the user is likely to visit next, for faster navigation.

---

The Speculation Rules API lets a site hint which links the browser should prefetch or prerender before the user clicks, making navigation feel instant. Speculative Loading configures those rules in Drupal. Two things to weigh: prerendering fetches pages in the background, so it can trigger work (and analytics/side-effects) for pages the user never actually visits — configure it to prerender safe, idempotent pages and be cautious with anything that has side effects on GET; and prefetching increases bandwidth. Used judiciously on likely-next pages it is a real perceived-performance win.

---

- Prerender likely-next pages.
- Prefetch links for fast navigation.
- Use the Speculation Rules API.
- Speed up perceived navigation.
- Configure speculation rules.
- Prerender safe idempotent pages.
- Avoid prerendering side-effect pages.
- Weigh the bandwidth cost.
- Improve navigation speed.
- Hint likely destinations.
- Be cautious with GET side effects.
- Tune what is prerendered.
- Enable when the feature is needed.
- Keep it disabled otherwise.
- Restrict administration to trusted roles.
- Confirm behaviour on your site.
- Test before production.
- Review configuration.
- Pair with related modules.
- Keep the setup minimal.
- Document why it was added.
- Verify it fits your theme.