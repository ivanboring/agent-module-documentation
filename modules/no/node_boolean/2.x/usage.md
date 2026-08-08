<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Node Boolean provides a condition plugin that evaluates based on a node's boolean field values, for use in block visibility and similar condition contexts.

---

Drupal's condition plugins drive block visibility, and sites often want visibility to depend on a node flag — 'show this block only when the node's featured checkbox is on'. Node Boolean adds a condition plugin evaluating a node's boolean field. It is a site-building convenience with no security surface; the condition governs display, not access, so it should not be used as a security boundary — a block hidden by a condition is not access-protected, just not shown.

---

- Show a block by a node boolean.
- Condition on a checkbox field.
- Vary display by a node flag.
- Use a boolean condition plugin.
- Gate block visibility by field.
- Show content when featured.
- Build conditional displays.
- Base visibility on a flag.
- Treat as display, not access.
- Configure block visibility.
- Enable when needed.
- Keep disabled otherwise.
- Restrict administration.
- Confirm on your site.
- Test before production.
- Review configuration.
- Pair with related modules.
- Keep setup minimal.
- Verify theme fit.
- Audit access.
- Match your use case.
- Confirm compatibility.