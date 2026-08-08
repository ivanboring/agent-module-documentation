<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Provide plugins examples for simple cron implementation — a submodule of **simple_cron**.

---

This is one of simple_cron's submodules. Provide plugins examples for simple cron implementation It exposes nothing on its own beyond that role and is governed by the parent module's configuration, permissions and behavior; enable it when you need this specific capability and leave it off otherwise, so the site only carries the parts of simple_cron it actually uses.

See the parent module for the overall system this fits into.

---
- Enable simple_cron_examples to add this capability.
- Extend simple_cron with simple_cron_examples.
- Keep it disabled if not needed.
- Depend on simple_cron.
- Scope functionality to what you enable.
- Add only the sub-features you use.
- Compose the parent's feature set.
- Turn on per requirement.
- Reduce surface by enabling selectively.
- Combine with sibling submodules.
- Configure via the parent module.
- Review what it exposes before enabling.
- Match it to your use case.
- Keep the parent's permissions in force.
- Enable alongside the parent.
- Use it as part of the parent's system.