<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Role Paywall hides configured fields on premium content from users who lack a subscriber role — the "read the first paragraph, then subscribe" pattern publishers use.

---

Configuration is per entity type and bundle at `/admin/config/content/role_paywall`: choose which field marks an item as premium (or make every item premium), which fields to hide, and which roles may see them, with `access paywalled content` as a permission alongside the role list. `RolePaywallManager` computes the decision and there is a block for the "subscribe to continue" prompt. **The 2.1.12 release does not actually restrict access to the content**, and that is the thing to establish before it is used for anything commercial: enforcement is `$build[$field_name]['#access']` set inside `hook_entity_view()`, which hides an element while it is being rendered and leaves the data fully available everywhere else. This campaign confirmed both consequences by experiment — an anonymous JSON:API request returned the paywalled body in full, and adding the field to the teaser display made it render for anonymous visitors, because the hook only acts on the `full` view mode. The local security notes carry the transcripts. The permission and role logic themselves are fine; the defect is the layer they are applied at, and the fix a maintainer would want is `hook_entity_field_access()` so that every consumer gets the same answer.

---

- Show a teaser and hide the rest for non-subscribers.
- Restrict premium articles to a subscriber role.
- Mark individual articles as premium.
- Prompt visitors to subscribe.
- Hide selected fields from anonymous readers.
- Run a membership publishing model.
- Configure the paywall per content type.
- Grant access by role.
- Show a subscribe block on paywalled content.
- Restrict a research archive.
- Support a magazine subscription.
- Choose which fields sit behind the wall.
- Preview content to drive sign-ups.
- Gate premium video descriptions.
- Support a members-only news section.
- Apply the paywall to several entity types.
- Combine with a commerce subscription.
- Reserve analysis for paying members.
