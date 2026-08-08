<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Entity Reference Ajax Formatter renders entity-reference fields with the referenced entities loaded via AJAX, deferring their rendering to a second request.

---

A field referencing many heavy entities makes the host page slow to render. Entity Reference Ajax Formatter defers the referenced entities to an AJAX load, so the host page returns quickly and the references fill in. It is a performance/display formatter. The security note is that the AJAX endpoint must apply the same access checks as inline rendering would — a deferred render must not expose referenced entities the user could not otherwise see. Confirm the referenced content's access is honoured on the AJAX path (this is standard for Drupal's render/access, but worth verifying for anything sensitive).

---

- Defer entity-reference rendering.
- Load references via AJAX.
- Speed up a heavy reference field.
- Return the host page faster.
- Lazy-load referenced entities.
- Confirm access on the AJAX path.
- Render references on demand.
- Improve page performance.
- Handle many references.
- Verify access is honoured.
- Enable when needed.
- Keep disabled otherwise.
- Restrict administration.
- Confirm on your site.
- Test before production.
- Review configuration.
- Pair with related modules.
- Verify theme fit.
- Match your use case.
- Confirm compatibility.
- Use deliberately.
- Review after upgrades.