<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Advanced Help Block (advanced_help_block) — agent index

Editorial **help content as blocks on chosen administrative pages**, stored as fielded entities.
From the **YMCA Website Services** distribution. Depends on `field_group`, `libraries`,
**`datalayer`**, core `text`, `options`, `user`, `help`. Version **1.0.8**.
Core requirement `^9 || ^10 || ^11`.

**Note the `datalayer` dependency** — a tracking-adjacent module, in a help feature. Worth noticing
before installing this outside the distribution it comes from.

**Why it addresses a real problem:** the guidance an editorial team needs is **site-specific** —
"use the summary field for the homepage card"; "images here must be 16:9"; "ask legal before
publishing in this section". That knowledge sits in a wiki nobody opens or one person's head, and
**the moment it is needed is while someone is looking at the form it applies to**.

**Permissions split view / add / edit of the help entities separately — the right split**: writing
guidance is an editorial act and should not require permission to configure blocks.

**Two practical notes:**
- **Help that is wrong is worse than no help**, because it is trusted. Guidance needs an **owner and
  a review point**, like any other content.
- **Scope the blocks to administrative routes.** Site-wide placement risks leaking internal
  instructions onto public pages, and guidance shown where it does not apply **trains people to
  ignore it**.
