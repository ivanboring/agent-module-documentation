<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Body Inject injects content into the body field by special conditions.

---

Body Inject injects **admin-configured content into the body field** based on configurable conditions —
letting you append/prepend snippets (notices, calls-to-action, boilerplate) into content bodies without
editing each node, driven by "profiles" you define. It provides its own permissions (`administer body_inject
profiles`), in the Custom package.

Use it to conditionally add shared content into bodies. It is a content/administration feature. Security note:
the injected content is **admin-authored markup** and is inserted into the rendered body, so it is effectively
an **admin content-injection** capability — gate `administer body_inject profiles` to **trusted
administrators** (whoever holds it can inject markup/scripts site-wide) and keep the injected snippets
trusted. It has no other access-control role. Configure the inject profiles.

---

- Inject content into the body field.
- Append/prepend snippets by condition.
- Add shared content without editing nodes.
- Drive injection with profiles.
- Provide administer body_inject profiles.
- Inject admin-authored markup.
- TREAT it as an admin content-injection capability.
- Gate the permission to trusted admins.
- Keep injected snippets trusted.
- Have no other access-control role.
- Configure the inject profiles.
- Handle body injection.
- Inject snippets.
- Configure conditions.
- Add body content.
- Handle the profiles.
- Inject markup.
- Configure injection.
- Restrict the permission.
- Provide body injection.
