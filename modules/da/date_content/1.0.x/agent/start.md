<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Date Content Augmenter (date_content) — agent index

Associates **any content with a date value**, through the **Date Augmenter** API.
Version **1.0.0-alpha8** (**alpha**). Core `^9.5 || ^10 || ^11`.
Depends on `date_augmenter:date_augmenter`.
Permissions: `add date content entities`, `administer date content entities`.

**Why the API rather than a field:** several augmenters can contribute to the same rendered date, so
an "add to calendar" link and an associated notice coexist without knowing about each other.

Models content that belongs **to a date** rather than to the page the date is on — a notice
explaining why one session differs, a source document for a historical entry, guidance attached to
a deadline.

**Verify the entity's access handling against your editorial roles** — a new entity type is a new
access surface, and this is an alpha.