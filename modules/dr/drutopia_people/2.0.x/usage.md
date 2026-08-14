<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Provides a People content type for showing visitors information about staff, volunteers and contributors.

---

Organisational sites need profile pages for staff, volunteers and contributors, and a way to attribute articles to those people. This Drutopia feature installs a People content type with position, type, body, summary, media image and topics, a people_type vocabulary, a people listing and a content-by-author view, so a person profile can double as an author reference across Article/Blog content.

As a Drutopia base feature it is config-only: enabling it installs the `people` content type, its fields, form and view displays (default/teaser/card/full and more), a `people_type` classification vocabulary, a Views-based listing, a Pathauto URL pattern, Metatag/SEO defaults, and comment/facet/search configuration where applicable. It ships no PHP routes, controllers, services or permissions of its own — access is governed entirely by core node permissions and the Drutopia editorial roles (contributor/editor/manager) it augments via `config/actions`. Editors add content from the listing's "Add" action link; site builders customise the installed config like any other content type.

---
- Add a People/profile content type to a Drutopia site
- Publish staff, volunteer and contributor profiles
- Record a person's position/title and profile type
- Attach a portrait image/media to a profile
- Classify people with the people_type vocabulary
- Attribute articles and blogs to a person (authors field)
- Show a 'content by author' view of a person's posts
- Browse the people listing view with an 'Add person' action
- Index people profiles in Search API
- Auto-generate URL aliases via Pathauto
- Emit Metatag SEO metadata for profiles
- Compose profile bodies from paragraphs
- Show card/small-card/full view displays for people
- Grant editorial roles people permissions
- Use the Views Plain output for author listings
