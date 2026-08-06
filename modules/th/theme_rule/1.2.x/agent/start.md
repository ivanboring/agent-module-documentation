<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Theme Negotiation by Rules (theme_rule) — agent index

Chooses the active theme from **condition-plugin rules** configured by a site builder, rather than
from a custom negotiator. Version **1.2.1**. Core `^9.2 || ^10 || ^11`. No dependencies.

**Where the surprises live: negotiation composes by service priority.** A site already has several
negotiators (admin theme, core default, sometimes domain or language). When a page renders in an
unexpected theme, the answer is the **ordering**, not this module's rules.

Remember the active theme drives more than appearance — libraries, template suggestions and some
render behaviour follow it. A rule that switches theme on a path switches those too.