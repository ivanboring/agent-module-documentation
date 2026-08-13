<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Entity Link Display adds a computed "Display Link" link field to every entity type that has a canonical link template, plus a "Display Link" field formatter that renders a configurable link to the entity's canonical page.
---
The module solves the common view-mode need for a "read more"/"view content" link without adding a real link field or a Views field. `hook_entity_base_field_info()` attaches a computed link base field (`entity_link_display`, backed by `ViewModeLinkComputedField`) to any entity type whose definition has a `canonical` link template; the field is display-configurable but hidden by default (region hidden, not visible), so it appears in Manage Display ready to be enabled per view mode. The `EntityLinkDisplayFormatter` (field type `link`) builds a Drupal render `#type => link` to `$entity->toUrl()` with optional link text (falling back to the entity label), CSS class(es), `rel` attributes (nofollow/noopener/noreferrer/external) and a target (`_self`/`_blank`/`_parent`/`_top`).

Operational and security notes: no configuration is required beyond enabling the field on a view mode and setting formatter options; the module ships no routes, permissions or services. Link markup is produced through Drupal's render system (`#type => link`), so the title is auto-escaped and the URL is generated from the entity, not from user input. Because the formatter targets `link` field types generally, it can also be selected on ordinary link fields. Note the formatter renders the canonical link regardless of whether the viewer can access the target entity — it is a presentation helper, not an access filter. The typical setup task is: go to Manage Display for a bundle/view mode, move "Display Link" out of the disabled region, and set its text/class/rel/target.
---
- Add a "View content" link to a content type's teaser view mode.
- Enable the computed "Display Link" field on any view mode.
- Set custom link text such as "Read more" or "Details".
- Fall back to the entity label as link text when text is empty.
- Add CSS classes to style the link as a button.
- Add `rel="nofollow"` to the generated link.
- Add `rel="noopener noreferrer"` for links opening in a new tab.
- Mark a link as `external` via the rel options.
- Open the link in a new tab with `target="_blank"`.
- Keep the link in the same tab with `target="_self"`.
- Provide a "read more" link on user or taxonomy term displays.
- Use it on any entity type that has a canonical URL.
- Apply the formatter to an existing link field.
- Avoid building a Views "link to content" field for simple cases.
- Configure the link per view mode independently.
- Hide the field on view modes where a link is not wanted (default).
- Combine text + class to render a call-to-action button.
- Localize the link text through the display settings.
- Present a consistent "view" link across multiple bundles.
- Render the link only when the entity has a canonical template.
