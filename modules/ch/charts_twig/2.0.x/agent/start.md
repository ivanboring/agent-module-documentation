<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Charts Twig (charts_twig) — agent index

One Twig function: `chart(...)`, building the Charts module's render element from a template.
Version **2.0.0**. Core `^8.8 || ^9 || ^10 || ^11`. Depends on **`charts` >= 5**.
No routes, permissions, or config.

Implementation is a single class, `ChartsTwig`, registering
`new TwigFunction('chart', $this->createChart(...))` with the element info manager. All chart
types, libraries and styling come from Charts itself.

Use it when the template already holds the data. For content-driven charts prefer **Views +
Charts** — that is the supported, cacheable path.

Note on inputs: values passed to `chart()` reach a render array and then JS configuration. Keep
the data server-side; decide explicitly what escaping applies before passing anything
user-supplied.