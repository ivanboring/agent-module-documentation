<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Debug Bar is a simple floating toolbar with debug information.

---

Debug Bar shows a **floating toolbar with debug information** — a lightweight in-page bar surfacing useful
runtime/debug details while developing. Viewing it is gated by a `view debug bar` permission and its admin
config by `administer debug bar`, in the Development package.

Use it for at-a-glance debugging during development. **Security note:** a debug toolbar can expose
**runtime/internal information** (routes, timings, config, potentially sensitive data), so grant `view debug
bar` only to **trusted/dev roles** and avoid exposing it to anonymous or general authenticated users on
production. It has no access-control role beyond its permissions. Grant the view permission to the right
roles.

---

- Show a floating debug toolbar.
- Surface runtime/debug details.
- Gate viewing by view debug bar.
- Gate config by administer debug bar.
- Serve developers.
- Show an in-page bar.
- KNOW it can expose internal information.
- Grant view debug bar to trusted/dev roles only.
- Avoid exposing it on production broadly.
- Have no access-control role beyond permissions.
- Grant the view permission carefully.
- Handle debug info.
- Show debug data.
- Configure the bar.
- Debug in-page.
- Restrict the toolbar.
- Handle the bar.
- Show a debug bar.
- Configure debugging.
- Provide a debug toolbar.
