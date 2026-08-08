<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Writing Assistant integrates Conductor (a writing/SEO optimization service) with the Canvas experience builder, storing credentials via the Key module.

---

Writing Assistant (module machine name `conductor`) integrates Conductor — a content-writing and
SEO optimization platform — with Canvas, bringing writing/SEO guidance into the content-authoring
experience. It depends on the `canvas` module and the `key` module, using Key to store the Conductor
API credentials securely. It provides its own permissions.

Use it where content teams use Conductor for SEO-driven writing guidance and want that surfaced while
authoring in Canvas. The security-relevant point is credential handling: because it integrates the Key
module, store the Conductor API credentials as a Key (environment or another secure provider), never in
plaintext config. Content or topic data may be sent to Conductor's service for analysis — a
data-handling consideration. It is an authoring/SEO integration with no access-control role beyond its
admin permission.

---

- Integrate Conductor writing/SEO guidance.
- Surface SEO guidance while authoring.
- Integrate with Canvas.
- Store Conductor credentials via Key.
- Depend on canvas and key.
- Provide its own permissions.
- Keep API credentials out of plaintext.
- Bring SEO guidance to authors.
- Send topic data to Conductor.
- Support SEO-driven writing.
- Handle credentials securely.
- Use Key for the API token.
- Assist content optimization.
- Guide writing for SEO.
- Integrate a writing assistant.
- Configure the Conductor connection.
- Mind data sent to the service.
- Have an admin permission.
- Improve content for search.
- Author with SEO feedback.
