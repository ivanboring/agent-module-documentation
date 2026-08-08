<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Custom Twig Formatter makes it possible to format fields using custom Twig code.

---

Custom Twig Formatter provides a field formatter that renders a field using **custom Twig code** entered
in the formatter settings — so site builders can format a field's output with arbitrary Twig (markup, logic,
tokens) without writing template files. It depends on core Field, in the Fields package.

Use it for flexible, code-free field formatting. **Security-relevant note:** it evaluates **admin-authored
Twig** as the field formatter — Twig is powerful, so this is a **trusted-administrator capability**. Drupal
renders Twig through its **sandbox** (which restricts dangerous functions/filters), which mitigates the risk,
but the Twig configurer can still craft output/markup, so: restrict who can configure field displays (the
formatter settings) to trusted users, and never expose the formatter configuration to untrusted users. It has
no content-access role (rendered field content respects its own access). Configure the Twig on the field
formatter.

---

- Format fields with custom Twig.
- Render a field via admin Twig code.
- Avoid writing template files.
- Depend on core Field.
- Add markup/logic/tokens in the formatter.
- TREAT it as a trusted-admin capability.
- Rely on Drupal's Twig sandbox to mitigate.
- Restrict who configures field displays.
- Never expose the formatter config to untrusted users.
- Have no content-access role.
- Configure the Twig on the formatter.
- Handle Twig formatting.
- Format flexibly.
- Configure the formatter.
- Render with Twig.
- Restrict Twig config.
- Handle field Twig.
- Format with code.
- Configure the field.
- Format via Twig.
