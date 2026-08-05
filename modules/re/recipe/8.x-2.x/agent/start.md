<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Recipe (recipe) — agent index

Recipe content type with structured ingredients, quantities and instructions. Submodule
**`ingredient`** supplies the field type that parses them. Depends on core `node`, `path`, `text`.
Version **8.x-2.3**. Core requirement `^10 || ^11`.

**Flag the name collision carefully.** Drupal core now has a feature called **recipes** — packaged
configuration and content applied to an existing site, the replacement for distributions. It has
nothing to do with cooking, and on a Drupal 10.3+ site the word is ambiguous in exactly the contexts
where it matters. **Say which is meant.**

**Why the `ingredient` field type is the substance of the module:** "200g plain flour" is a
quantity, a unit and an ingredient. As a line of text the site cannot scale to six servings, convert
units, build a shopping list from three recipes, or list everything containing tomatoes. Parsing the
human phrasing into parts — and keeping both — is the work.

**What a recipe site actually wants next:** **`Recipe` structured data**. Google renders recipes as
rich results with a photograph, star rating, cook time and calories, and that presentation is worth
more traffic than the content type. Check what JSON-LD this emits, or plan `schema_metatag`
alongside it.
