<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Logs group CUD events performed by the user. — a submodule of **events_log_track**.

---

This is one of events_log_track's submodules. Logs group CUD events performed by the user. It exposes nothing on its own beyond that role and is governed by the parent module's configuration, permissions and behavior; enable it when you need this specific capability and leave it off otherwise, so the site only carries the parts of events_log_track it actually uses.

See the parent module for the overall system this fits into.

---
- Enable event_log_track_group to add this capability.
- Extend events_log_track with event_log_track_group.
- Keep it disabled if not needed.
- Depend on events_log_track.
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