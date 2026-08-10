<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
BCVB bypasses Drupal core's entity view display.

---

BCVB (Bypass Core View Builder) **bypasses core's entity view display** for selected entities — skipping the
standard field-based view-display rendering in favour of a custom/lighter render path, e.g. for performance or
fully-custom output. It provides its own permissions.

Use it when you want to render entities without the core view display. It is a developer/display feature.
Security note: bypassing the core view builder means you also **bypass the field-level access checks and
formatters** that the view display normally applies — so a custom render path must **re-apply field/entity access
and sanitization** itself (don't output raw field values unfiltered, and respect access), or you risk leaking
restricted fields or introducing XSS. It has no access-control role of its own beyond its permission. Configure
which entities bypass the view builder and ensure the custom rendering is safe.

---

- Bypass core's entity view display.
- Skip standard view-display rendering.
- Use a custom/lighter render path.
- Provide its own permissions.
- Serve developers/display.
- Render entities custom-ly.
- BYPASS field-level access + formatters the view display applies.
- RE-APPLY field/entity access + sanitization in the custom path.
- Not output raw field values unfiltered (XSS/leak risk).
- Have no access-control role of its own beyond permission.
- Ensure the custom rendering is safe.
- Configure which entities bypass.
- Handle the bypass.
- Render entities.
- Configure the rendering.
- Bypass the display.
- Handle the render path.
- Skip the view builder.
- Re-check access.
- Provide view-builder bypass.
