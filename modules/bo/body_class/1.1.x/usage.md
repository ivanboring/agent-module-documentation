<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Body Class adds a custom class to the body tag for each node.

---

Body Class lets you add a custom CSS class to the `<body>` tag on a per-node basis — so specific nodes
can carry a class for targeted CSS/JS, enabling per-node styling. It is configured at `body_class.settings`
and provides its own permissions, in the Other package.

Use it for per-node body classes. It is a content-display/theming feature; the class is added to the body
tag. Note: the class value is typically set by editors — it is emitted into the `class` attribute, so
sanitize/constrain it to valid class tokens (a free-text value shouldn't be able to inject markup/attributes;
restrict who can set it to trusted editors via its permission). It has no access-control role. Configure the
body class per node.

---

- Add a custom body class per node.
- Target nodes with CSS/JS via class.
- Enable per-node styling.
- Configure at body_class.settings.
- Provide its own permissions.
- Add classes to the body tag.
- Sanitize/constrain the class value.
- Restrict who can set the class (trusted editors).
- Have no access-control role.
- Configure the body class.
- Handle body classes.
- Add node classes.
- Style per node.
- Configure classes.
- Add CSS classes.
- Handle per-node CSS.
- Add body classes.
- Configure the class.
- Restrict class setting.
- Style nodes.
