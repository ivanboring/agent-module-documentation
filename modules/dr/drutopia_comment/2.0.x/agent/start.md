<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Drutopia Comment (drutopia_comment) — agent index

**A Drutopia distribution feature module that installs default comment configuration (comment type, fields, displays).**

- **Version:** 2.0.x
- **Core:** ^10.2 || ^11 || ^12
- **Package:** Drutopia
- **Dependencies:** comment, drutopia_core, field, node, rdf, text (composer also requires drupal/config_actions)
- **Routes / services / permissions:** none of its own; commenting is governed by core Comment permissions.
- **Setup:** enable the module (usually via the Drutopia profile); manage comments through core's comment admin.

**Security:** no code, no routes, no custom access surface — pure config bundle; access is core Comment's.
