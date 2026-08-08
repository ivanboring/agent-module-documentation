<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Views Filter Last Delta (vfld) adds a Views filter that matches on the last delta (last value) of a multi-value field.

---

Multi-value fields store an ordered list, and sometimes the meaningful value is the last one — the most recent status, the latest entry. Views cannot easily filter on 'the last delta' out of the box. vfld adds a Views filter for exactly that. It is a Views query convenience with no security surface; it filters what the view already exposes. Confirm the delta semantics match your data (last delta = most recently added, assuming append-order).

---

- Filter by the last field value.
- Match the last delta.
- Filter on the latest entry.
- Use the most recent status.
- Filter a multi-value field.
- Query the last value.
- Add a last-delta Views filter.
- Confirm delta ordering.
- Filter latest-value records.
- Use in a view.
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