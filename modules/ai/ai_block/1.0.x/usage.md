<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
AI Block exposes a Drupal block that renders simple AI-generated output.

---

AI Block provides a placeable block that renders simple AI features — an editor configures the block (prompt/behaviour) and it produces AI-generated output rendered in the block region. It's a lightweight way to surface AI content without building a custom module.

Because the block calls the AI module's configured provider, generation uses the site's provider key and incurs cost; keep block configuration (which drives prompts) to trusted editors. Depends on core `block`, `config`, and `ai`; supports Drupal 10 and 11.

---

- Provide a block with AI features.
- Render AI-generated output in a region.
- Configure the block's behaviour.
- Surface AI content without custom code.
- Call the AI module's configured provider.
- Use the site's provider key.
- Incur generation cost per render.
- Keep block config to trusted editors.
- Depend on core `block` and `config`.
- Depend on the `ai` module.
- Support Drupal 10 and 11.
- Place the block in any region.
- Drive output via prompt config.
- Integrate AI into block layout.
- Provide a lightweight AI surface.
- Cache-consider AI output.
- Configure per block instance.
- Render simple AI features.
- Complement the AI module.
- Manage prompts as configuration.
