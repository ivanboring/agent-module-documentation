<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Paragraphs Selection inverts where the allowed-paragraph-types list lives: instead of each field naming the bundles it accepts, each bundle declares where it may be used.

---

On a site with thirty paragraph types and fifteen fields that reference them, the field-side model does not scale. Adding a new paragraph type means editing every field that should accept it — a step that is easy to forget, so the new type is available in four places and missing from the fifth for a month until someone notices. Removing a type means the reverse. The information is the same either way, but it is maintained in the wrong place: whether a "Full-width hero" belongs in a page body is a property of the hero, not of every field that might hold one. Declaring it bundle-side means adding a type is one edit, and the constraint travels with the thing it describes. Version **2.0.6** on `^9 || ^10 || ^11`, requiring `paragraphs`, with a submodule adding support for **Paragraphs Sets**. Two things to expect. **The two models must agree**, since the field's own allowed-bundles setting still exists — establish whether this replaces it, intersects with it, or is applied on top, because a type that is permitted on one side and not the other is exactly the confusion the module set out to remove. And **restricting where a paragraph may be used is a content-modelling decision, not an access one**: it shapes what an editor is offered in the widget, and it does not stop a migration, a JSON:API write or an existing piece of content from placing that paragraph somewhere the rule now forbids.

---

- Declare where a paragraph type may be used.
- Add a paragraph type without editing fields.
- Restrict a hero to page bodies.
- Manage thirty paragraph types sanely.
- Keep nesting rules with the bundle.
- Prevent a paragraph appearing everywhere.
- Simplify a large content model.
- Reduce field configuration edits.
- Control which types nest inside others.
- Support Paragraphs Sets.
- Keep the editor's options relevant.
- Roll out a new component consistently.
- Retire a paragraph type cleanly.
- Reduce editorial confusion.
- Model component placement rules.
- Restrict a type to one content type.
- Keep constraints discoverable.
- Support a design system's rules.
