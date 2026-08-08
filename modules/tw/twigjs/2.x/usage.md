<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Twig.js provides the Twig.js JavaScript library as a Drupal library, letting other code render Twig templates client-side.

---

Twig.js is a JavaScript implementation of Twig, for rendering Twig templates in the browser (useful in decoupled or JS-heavy front ends that want to reuse Twig templates client-side). This module packages Twig.js as a Drupal library for others to depend on. It is a library-provider with no functionality of its own. One consideration for anything using it: client-side template rendering with untrusted data can be a client-side template-injection surface if user input is used as a template (not just template data) — but that is a concern for the code that uses Twig.js, not this library-provider. It makes the library available; safe use is up to consumers.

---

- Provide the Twig.js library.
- Render Twig client-side.
- Reuse Twig templates in JS.
- Depend on Twig.js.
- Enable browser Twig rendering.
- Package a JS library.
- Support decoupled front ends.
- Load Twig.js.
- Provide a library dependency.
- Use in another module.
- Enable when needed.
- Keep disabled otherwise.
- Restrict administration.
- Confirm on your site.
- Test before production.
- Review configuration.
- Pair with related modules.
- Verify theme fit.
- Match your use case.
- Confirm compatibility.
- Use deliberately.
- Review after upgrades.