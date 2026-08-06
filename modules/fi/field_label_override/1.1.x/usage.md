<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Field Label Override lets a field's label be changed per entity view display, rather than once on the field configuration.

---

A field's label is set on the field and used everywhere, which stops being right as soon as the same field appears in different contexts. `field_start_date` might be "Start date" on the full node, "From" in a compact card where space is short, "Event begins" in a listing where the label carries more of the meaning, and hidden entirely in a teaser. Sites work around this with a preprocess function per view mode, or by creating a second field with a different label and duplicating the data, or by hiding the label and putting the wording in the template — each of which moves an editorial decision into code and makes it invisible to whoever manages displays. Making it a display setting puts it where the rest of the display configuration already lives, exportable and visible in Manage Display. Version **1.1.0** on core `^10 || ^11`. Two things worth attaching. **A label is content in a multilingual site**, so an override needs to be translatable in the same way the field's own label is, and an override that is not means one language's wording appears in all of them — which is the commonest failure of configuration-level text on translated sites. And **the label is what a screen reader announces before the value**, so an override chosen for visual compactness — "From" instead of "Start date" — is shorter for everyone including the person who has no surrounding layout to give it context, which is an argument for keeping the accessible name fuller than the visible one where the two can differ.

---

- Rename a field label in a card display.
- Use a shorter label in a compact view.
- Change a label per view mode.
- Avoid duplicating a field for wording.
- Use "From" instead of "Start date".
- Adjust labels for a listing display.
- Avoid a preprocess function for a label.
- Rename a label in a teaser.
- Use context-appropriate field wording.
- Keep label changes in configuration.
- Adjust a label for a search result.
- Rename a field in a print display.
- Use clearer wording in a summary view.
- Avoid hiding labels to change wording.
- Adjust labels per display mode.
- Rename a shared field contextually.
- Support a design's label requirements.
- Change wording without a new field.
