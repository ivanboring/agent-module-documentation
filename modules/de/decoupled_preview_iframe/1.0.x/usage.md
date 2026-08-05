<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Decoupled Preview Iframe lets editors preview content as their decoupled front end will render it: the node view page embeds an iframe pointing at the front-end application's preview URL, so authors see the real design without leaving Drupal.

---

On a headless site, Drupal's own node page shows raw fields that look nothing like what visitors get. This module bridges that gap. Its settings form (`/admin/config/decoupled_preview_iframe/settings`, permission `administer site configuration`) stores a `preview_url` for the front-end application, the `preview_types` (which content types get the iframe), a `route_sync` value used to keep the iframe's route aligned with the Drupal path, a `draft_provider` for how draft/preview authentication is handled, and a `redirect_anonymous` flag with a `redirect_url` so anonymous visitors hitting the Drupal node can be sent elsewhere rather than seeing the editorial preview. Rendering is done through `hook_entity_view_alter()`, which swaps in the `preview-iframe.html.twig` template for the configured bundles, plus a JS/CSS library that manages iframe sizing and route syncing. It also alters the core preview form select (`hook_form_node_preview_form_select_alter()`) so the "back to content editing" experience makes sense inside the iframe. There are no permissions of its own, no Drush commands, and the module is deliberately front-end agnostic — Next.js, Nuxt, Astro or anything else that can render a preview URL.

---

- Let editors preview content in the decoupled front end from inside Drupal.
- Show the real design instead of raw Drupal field output.
- Preview unpublished drafts against the front-end application.
- Restrict previewing to selected content types.
- Redirect anonymous visitors away from the editorial node page.
- Keep the iframe route in sync with the Drupal path.
- Support Next.js draft mode from a Drupal preview.
- Give reviewers a realistic preview link.
- Avoid maintaining a separate preview tool.
- Preview responsive layouts inside the admin UI.
- Use one preview URL for all previewable content types.
- Keep editors inside Drupal during review.
- Configure preview behaviour as exportable config.
- Support several draft providers via the setting.
- Show the front-end rendering during content moderation.
- Preview a node before publishing to the live front end.
- Give stakeholders a preview without front-end access.
- Reduce round trips between Drupal and the front-end team.
- Theme the preview wrapper with the shipped template.
- Turn the iframe off for content types that have no front-end route.
