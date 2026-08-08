<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Block Renderer provides a way to render Drupal blocks programmatically so their output can be reused outside normal block placement.

---

Block Renderer provides a mechanism to render Drupal blocks independently of the normal region/
layout placement — producing a block's rendered output so it can be reused (embedded elsewhere,
returned to a consumer, or composed programmatically). It is a developer/site-building utility for
getting at block output on demand.

Use it when you need a block's rendered markup outside its usual placement — for example embedding a
block's output in custom markup or a decoupled context. Because rendering a block runs its build and
access logic, blocks still honour their own access and cache metadata when rendered this way; treat the
output with the same care as any rendered block. It is a rendering utility with no access-control role
of its own.

---

- Render a block programmatically.
- Reuse block output elsewhere.
- Get a block's rendered markup.
- Render blocks outside placement.
- Embed block output in markup.
- Compose blocks programmatically.
- Return block output to a consumer.
- Honour block access when rendering.
- Respect block cache metadata.
- Provide a rendering utility.
- Have no access-control role.
- Render on demand.
- Reuse blocks in custom contexts.
- Produce block markup.
- Support decoupled block output.
- Access block output independently.
- Build with block output.
- Render a block by id.
- Compose UI from blocks.
- Use block output flexibly.
