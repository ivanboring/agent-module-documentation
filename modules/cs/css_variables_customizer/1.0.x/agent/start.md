<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# CSS Variables Customizer (css_variables_customizer) — agent index

Overrides a theme's **CSS custom properties** (`--color-primary`, `--spacing-md`, …) from the
administration interface. Overview at `/admin/…/css_variables_customizer`.
Version **1.0.0-beta3** — **beta**. Core requirement `^10 || ^11`.

**Why the gap exists:** modern themes express design tokens as custom properties precisely so they
can be changed in one place, and Drupal offers no way to change them without a deployment. The
alternatives are a **sub-theme per variation** (a codebase per client) or a colour module of the
kind core removed (rewrote stylesheets, colour only).

**Three things to think about:**
1. **A value written into a page needs escaping.** Custom property values land inside a `style`
   block or attribute — the module must **validate** rather than concatenate administrator input
   into CSS. **CSS injection is a real, less familiar vector.**
2. **Only what the theme declared as a variable is adjustable.** A theme with three tokens offers
   three levers, whatever the client asks for.
3. **Where the overrides live decides deployment.** *Configuration* → exports, deploys, and is
   **overwritten by a config import**. *Content or state* → survives deployment, invisible in a
   diff.
