<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Date Content Augmenter attaches arbitrary content to a date value through the Date Augmenter API.

---

Date Augmenter is an API for adding things to a rendered date — the canonical example being an "add to calendar" link. This module extends the idea: associate any content entity with a date, so a date in a listing or on an event can carry related material.

The uses that follow are editorial rather than technical. A date on a programme carries the notice explaining why that session differs; a historical date in a timeline carries the source document; a deadline carries the guidance for meeting it. Each of those is content that belongs *to a date*, not to the page the date appears on, and there is no natural place for it in a normal content model.

Working through the Date Augmenter API rather than as a bespoke field is what makes it composable: several augmenters can contribute to the same rendered date, so an "add to calendar" link and an associated notice coexist without either knowing about the other.

The release is **1.0.0-alpha8**, an alpha, and the module defines its own entity type with add and administer permissions. Verify the entity's access handling against your editorial roles before relying on it, since a new entity type is a new access surface.

---

- Associate content with a date value.
- Attach a notice to a specific session date.
- Link a source document to a historical date.
- Add guidance to a deadline.
- Compose several augmenters on one date.
- Coexist with an add-to-calendar link.
- Model content that belongs to a date.
- Use the Date Augmenter API rather than a field.
- Create date content entities.
- Restrict who may create date content.
- Verify the entity's access handling.
- Evaluate an alpha before relying on it.
- Show related material in a listing.
- Annotate a programme's dates.
- Plan a timeline with sourced entries.
