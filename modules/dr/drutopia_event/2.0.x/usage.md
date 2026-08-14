<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Installs a ready-made Event content type and its supporting configuration (date/date-range field, event type vocabulary, media image, paragraphs body, views listing, facets, pathauto and metatag) as a Drutopia feature.

---

Drutopia Event is a configuration bundle (a Features-managed base feature, `bundle: drutopia`, `required: true`) rather than a code-heavy module: it ships almost entirely as `config/install` YAML. Enabling it creates the `event` node type with an event date field (`field_event_date`, datetime range), an `event_type` taxonomy vocabulary and reference, tags/topics references, a media/focal-point image, a summary and a paragraphs body, plus multiple view displays (card, teaser, full, micro, simple_card, search_index). It also provisions a Search API index, facets (event type, topics), a Views listing (`view.event.page_listing`) with an "Add event" action link, pathauto URL patterns, metatag defaults and a block visibility group for event listings.

Because it is a feature, its behavior depends on a large stack of contrib modules (Drutopia core/SEO, Display Suite, Paragraphs, Facets, Search API, Focal Point, Media Library modify, Field Group, Metatag, Pathauto, Entity Reference Revisions). `config/actions` grants event create/edit/delete-style permissions to the Drutopia `contributor`, `editor` and `manager` roles via config actions. There is no custom PHP, route, service or permission defined by the module itself — access to events follows the standard node access system and the roles configured by the actions. Typical setup is simply enabling the module within a Drutopia site and then authoring events.

---

- Install a complete Event content type in one step.
- Capture event start/end via a datetime range field.
- Categorize events with an event type taxonomy.
- Tag events with topics and tags references.
- Add a focal-point media image to events.
- Compose event bodies with Paragraphs.
- List events through the bundled Views page (`view.event.page_listing`).
- Provide an "Add event" action link on the listing.
- Let visitors filter events with facets (type, topics).
- Index events in Search API for search/facets.
- Generate SEO-friendly event URLs via Pathauto.
- Apply Metatag defaults to event pages.
- Render events in card/teaser/full/micro view modes.
- Control event listing blocks with block visibility groups.
- Grant event authoring to Drutopia contributor/editor/manager roles.
- Provide a search index view display for events.
- Use as the events building block of a Drutopia site.
- Extend the shipped config to your needs after install.
- Export/override the event type and fields via configuration.
- Combine with other Drutopia features for a full site.
- Add responsive image styles to event media.
- Build an events calendar/listing landing page.