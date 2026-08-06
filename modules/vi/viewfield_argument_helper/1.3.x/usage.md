<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Viewfield Argument Helper improves how editors supply contextual filter values when embedding a view through a Viewfield.

---

Viewfield lets an editor place a view inside a node — a related-content listing, a filtered set of events, a product grid — and choose which view and display. The awkward part is contextual arguments: a view that filters by taxonomy term needs a term id, and the field asks for it as a raw string. An editor who knows the term is "Renewable energy" does not know it is 47, and there is nothing in the interface to tell them, so the value is looked up in another tab, mistyped, or guessed. Worse, a wrong id produces no error — the view simply returns nothing, which reads as "there is no related content" rather than "this is misconfigured". Providing entry assistance turns an opaque numeric field into a choice. Version **1.3.3** on core `^9.4 || ^10 || ^11`, requiring `views` and `viewfield`. Two things worth attaching. **An entity id stored in content is a reference Drupal does not know about**, so nothing stops the term being deleted, nothing updates the value, and a migration renumbering terms silently repoints every embedded view — which is the same portability problem `entity_reference_uuid` addresses from the other end. And **the embedded view brings its own access and cache metadata**, so a view embedded in a node varies by whatever it varies by, and the node's cacheability has to account for it or the first visitor's results are served to everyone.

---

- Help editors choose a view argument.
- Avoid typing raw term ids.
- Fix silently empty embedded views.
- Improve Viewfield usability.
- Select a term instead of an id.
- Embed a filtered related-content view.
- Reduce misconfigured view embeds.
- Support editors placing views in content.
- Choose an argument from a list.
- Embed an events view filtered by category.
- Reduce support requests about empty views.
- Improve a landing page building flow.
- Select a node reference as an argument.
- Support a product grid embed.
- Avoid guessing entity ids.
- Improve editorial confidence with Viewfield.
- Embed a view with the right context.
- Reduce errors in view arguments.
