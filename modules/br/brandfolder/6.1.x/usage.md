<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Brandfolder integrates Drupal with the Brandfolder Digital Asset Management platform, bringing Brandfolder assets into Drupal media.

---

Brandfolder integrates Drupal with the Brandfolder Digital Asset Management (DAM) platform — letting
editors browse and use assets stored in Brandfolder as Drupal media, so a central brand-asset library is
available within the site. It depends on core Media, is configured at
`brandfolder.brandfolder_settings_form`, and provides its own permissions.

Use it to source media from Brandfolder. The security-relevant point: it authenticates to the Brandfolder
API with an API key/token — **store that credential as a secret** (environment variable / Key entity), not
in exported config or code. Assets referenced from Brandfolder are external; the module bridges them into
media. It has no content-access role beyond its permission. Configure the Brandfolder connection.

---

- Integrate Brandfolder DAM.
- Use Brandfolder assets as media.
- Browse the brand-asset library.
- Depend on core Media.
- Provide its own permissions.
- Store the Brandfolder API key as a secret.
- Avoid credentials in exported config.
- Bridge external assets into media.
- Configure at the settings form.
- Have no content-access role beyond permission.
- Source media from Brandfolder.
- Connect to the Brandfolder API.
- Use a central asset library.
- Handle credentials securely.
- Configure the connection.
- Reference Brandfolder assets.
- Manage brand assets.
- Import DAM assets.
- Use DAM media.
- Integrate the DAM.
