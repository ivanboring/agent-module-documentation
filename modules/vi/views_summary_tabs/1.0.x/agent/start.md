<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Views Summary Tabs (views_summary_tabs) — agent index

Renders a view's **argument summary** — the distinct values available for a contextual filter, with
counts — as a row of **tabs** rather than a list of links. Version **1.0.1**.
Core requirement `^10 || ^11`.

**What a Views summary is** (an underused feature): when a contextual filter has **no value**, the
view can list the values that exist, each linking to the filtered result. That is how an **A–Z
glossary**, an **archive by year** and a **browse by category** page work. Views renders it as an
unformatted list of links — correct, and it looks like nothing.

**Two things determine whether it works:**
1. **Tab semantics or link semantics — pick one and be consistent.** These are **links that
   navigate**, not tabs that switch in-page panels. Mark them up as a **list of links with
   `aria-current`**, not `role="tablist"` + `aria-selected`, which promise panel switching that does
   not happen. Getting it wrong tells a screen-reader user the page works in a way it does not —
   **worse than plain links**.
2. **The number of values decides the presentation.** Twenty-six letters fit a row; forty categories
   do not, and a strip wrapping to three lines has become a list of links with extra styling.
   **Check the real data first.**
