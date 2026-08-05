<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
SDC Component Library renders a preview page for a site's **Single Directory Components**, so designers and developers can see the component set in one place without a separate Storybook installation.

---

Single Directory Components landed in Drupal core as the standard way to package a component — its Twig template, CSS, JavaScript and metadata in one folder with a schema describing its props and slots. What core does not provide is a way to *look* at them: components are only visible where they happen to be used, so a design system built from SDC has no gallery. The established answer is Storybook, which means a Node toolchain, a parallel rendering environment and the ongoing risk that the story drifts from the component. This module takes the lighter route — a page at `/sdc-component-library` rendering the components through Drupal itself, using the props defined in the component's own schema, so what you see is what the site renders. A settings form controls which components appear, and the single permission `access sdc component library` is marked **`restrict access: true`**, which is right: a component gallery enumerates the site's front-end building blocks and renders arbitrary components, which is reconnaissance you would not want public. Core requirement is `^10.3 || ^11`, matching SDC's availability.

---

- Preview all SDC components on one page.
- Give designers a component gallery.
- Check a component renders correctly.
- Avoid a Storybook installation.
- Review the component set with a stakeholder.
- Verify component props from the schema.
- Onboard a developer to the design system.
- Spot components no longer used.
- Compare component variants side by side.
- Document a front-end library in-site.
- Test components after a theme change.
- Render components exactly as the site does.
- Restrict the gallery to developers.
- Check responsive behaviour of components.
- Audit a design system's coverage.
- Demonstrate components during a review.
- Debug a component's slot handling.
- Keep component previews in step with code.
