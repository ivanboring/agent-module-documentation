<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
CSS Variables Customizer lets a theme's CSS custom properties be overridden from the administration interface, so colours, spacing and typography can be adjusted without editing stylesheets.

---

Modern themes express their design tokens as CSS custom properties — `--color-primary`, `--spacing-md`, `--font-heading` — precisely so they can be changed in one place, and Drupal offers no way to change them without a code deployment. That gap is felt most by the people least able to bridge it: a client who wants their brand colour applied, a sub-site that differs from its parent only in accent colour, a campaign that needs a different palette for six weeks. The alternatives are a sub-theme per variation, which is a codebase per client, or a colour module of the kind core removed, which rewrote stylesheets and never handled anything but colour. Overriding custom properties handles all of it, because the theme already decided which values are tokens. Version **1.0.0-beta3** — a **beta** — on core `^10 || ^11`, with an overview at its own admin route. Three things to think about. **A value written into a page is a value that needs escaping**: custom property values end up inside a `style` block or attribute, so the module must validate them rather than concatenating administrator input into CSS, and CSS injection is a real if less familiar vector. **Only what the theme declared as a variable is adjustable**, so a theme with three tokens offers three levers regardless of what the client asks for. And **where the overrides live** decides everything about deployment: configuration means they export and deploy and are overwritten by a config import, while content or state means they survive deployment and are invisible in a diff.

---

- Change a theme's primary colour.
- Apply a client's brand palette.
- Adjust spacing without editing CSS.
- Create a campaign colour scheme.
- Differentiate a sub-site by accent colour.
- Avoid a sub-theme per client.
- Let a site owner adjust typography.
- Change a colour without a deployment.
- Support a white-label deployment.
- Adjust a theme's design tokens.
- Preview a palette change.
- Apply seasonal branding.
- Adjust contrast for accessibility.
- Support a multi-brand installation.
- Change a heading font variable.
- Tune a theme after launch.
- Support a design handover.
- Adjust border radius site-wide.
