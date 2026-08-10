<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
D2 provides methods to generate SVGs using D2 diagram syntax.

---

D2: Declarative Diagramming **generates SVG diagrams from D2 syntax** — taking D2 (a text-based diagram
language) input, producing an SVG via the D2 renderer, caching it, and displaying it. It provides its own
permissions.

Use it to render diagrams from D2 markup. It is a content/developer feature with two operational considerations to
understand: (1) it **shells out to the `d2` binary** — the module uses a PHP wrapper that runs the D2 CLI through
Symfony Process (which passes arguments as an argv array rather than a shell string, avoiding naive shell
injection), so you must install the `d2` executable on the server and keep it updated; and (2) the output is an
**SVG that is rendered on the page** — SVG can carry active content, so treat the D2 **input as trusted
(editor-level)** and gate who can supply it via its permission; don't expose D2 authoring to untrusted users and
ensure the rendered SVG is served/handled safely. It has no access-control role beyond its permission. Configure
D2 and its binary path.

---

- Generate SVGs from D2 syntax.
- Render diagrams from D2 markup.
- Cache and display the SVG.
- Provide its own permissions.
- Serve content/developers.
- Produce diagrams.
- SHELL OUT to the d2 binary (via Symfony Process argv, not a shell string).
- Require the d2 executable installed + updated on the server.
- Render an SVG on the page (SVG can carry active content).
- TREAT D2 input as trusted (editor-level); gate who supplies it.
- Not expose D2 authoring to untrusted users.
- Configure D2 and its binary path.
- Handle diagram generation.
- Generate diagrams.
- Configure the renderer.
- Render SVGs.
- Handle the binary.
- Draw diagrams.
- Trust the input.
- Provide D2 diagramming.
