<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
ECA Metatag connects the ECA no-code automation framework to the Metatag module: two actions let an ECA model add a meta tag or set a tag's value while an event is being processed, so meta tags can be driven by business rules instead of hard-coded configuration.

---

ECA (Events–Conditions–Actions) lets site builders model behaviour without writing PHP, and Metatag holds a site's SEO tags — but until now, changing a tag from a model meant custom code. This module supplies two action plugins, declared with both `#[Action]` and `#[EcaAction]` attributes so they appear in ECA's model editor with proper labels and configuration: `eca_metatag_add_tag` adds a tag to the current metatag context, and `eca_metatag_set_tag_value` sets the value of an existing tag. Because they are ECA actions, their inputs accept ECA tokens, so a value can be assembled from the event's entity, from earlier actions in the model, or from anything else in the token context. An `EcaEvents` class and the module's `services.yml` supply the module's event plumbing, and an install file handles setup. It requires `eca` (`^2 || ^3`) and `metatag`; there is no configuration UI, no permissions and no Drush — everything is configured inside ECA models.

---

- Set a page's meta description from a field value using an ECA model.
- Add a `robots: noindex` tag when content is unpublished.
- Drive Open Graph tags from business rules.
- Set canonical tags conditionally without custom code.
- Add a meta tag only for a specific content type.
- Compose meta values from tokens available in the event.
- Change meta tags during a content moderation transition.
- Set social preview images based on a taxonomy term.
- Add tracking meta tags for a campaign period.
- Let site builders manage SEO logic without a developer.
- Combine metatag changes with other ECA actions in one model.
- Add tags based on the current user's role.
- Set language-specific meta values in a multilingual model.
- Apply meta tags to entities created via an API.
- Override a default tag for a subset of content.
- Model complex SEO rules visually in BPMN.
- Keep SEO automation in configuration rather than code.
- Test SEO rules by adjusting a model rather than deploying code.
- Add structured metadata during an import.
- React to entity events by adjusting meta tags.
