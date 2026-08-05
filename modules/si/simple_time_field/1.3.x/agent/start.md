<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Simple Time Field (simple_time_field) — agent index

**Time-only** field type (no date). Depends on core `field`. Core requirement `^10 || ^11`.

Key facts:
- Complete surface for a field module: `src/Element/` (form element), `src/Plugin/` (type, widget,
  formatter), `src/Utility/`, `src/Feeds/` (import), Views integration, `config/schema`.
- Features: 12/24-hour formatting, optional seconds, min/max constraints, timezone display.
- **Why not a datetime field:** Drupal's datetime always carries a date, so storing "09:00" means
  inventing one — which then leaks into display, sorting and timezone handling.
- **Semantics to raise for opening hours:** a time without a date has **no unambiguous instant**,
  so the display-timezone setting matters and comparing times across zones is not meaningful. For
  real opening-hours modelling (exceptions, holidays, spans crossing midnight) a dedicated module
  fits better; this is right when a plain time value is what is needed.
- No routes, permissions or configuration pages — everything is per-field.
