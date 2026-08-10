<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Content Singleton provides a fieldable content entity where each bundle type is a singleton.

---

Content Singleton provides a **fieldable content entity type where each bundle is a singleton** — exactly
one instance per bundle — so you can model site-wide, one-off fieldable content (e.g. "Homepage settings",
"Global banner") as a proper entity instead of a config form or a special node. It requires PHP 8.3, provides
its own permissions, core 11.

Use it for single-instance fieldable content. It is a content-modelling feature; the singletons are content
entities whose access follows normal entity access + its permissions, and it has no special access-control role
beyond that. Define the singleton bundles and their fields.

---

- Provide singleton content entities.
- Have one instance per bundle.
- Model site-wide one-off content.
- Require PHP 8.3.
- Serve global settings/banners as entities.
- Avoid config forms/special nodes.
- Follow normal entity access + permissions.
- Provide its own permissions.
- Have no special access-control role.
- Define the singleton bundles.
- Handle singletons.
- Create singletons.
- Configure the entity.
- Handle the bundles.
- Model singletons.
- Configure content.
- Handle the entity type.
- Add singletons.
- Define fields.
- Provide singleton content.
