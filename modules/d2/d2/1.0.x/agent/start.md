<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# D2: Declarative Diagramming — agent index

**Generates SVG diagrams from D2 syntax** (caches + renders). Provides permissions. Version **1.0.0-beta0**. Core
`^11`.

Content/developer — **shells out to the `d2` binary** via Symfony Process (argv array, not a shell string; install
the binary) and **renders an SVG on the page** (SVG can carry active content). Treat D2 **input as trusted
(editor-level)**; gate who supplies it. No access role beyond permission.
