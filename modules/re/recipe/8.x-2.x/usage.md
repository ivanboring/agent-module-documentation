<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Recipe supplies a recipe content type with structured ingredients, quantities and instructions, plus an `ingredient` submodule providing the field type that parses them.

---

A recipe is the standard example of content that looks like prose and is really data. "200g plain flour" is a quantity, a unit and an ingredient, and treating it as a line of text means the site cannot scale a recipe to six servings, cannot convert grams to ounces, cannot build a shopping list from three recipes, and cannot list everything containing tomatoes. The `ingredient` field type is where that work happens — parsing the human phrasing into parts and keeping both — and it is the reason this module is more than a content type someone could have configured. Version **8.x-2.3** on core `^10 || ^11`, depending on core `node`, `path` and `text`. **A name collision worth flagging carefully**: Drupal core now has a feature called **recipes** — packaged configuration and content applied to an existing site, the replacement for distributions — and it has nothing to do with cooking. On a Drupal 10.3+ site the word is ambiguous in exactly the contexts where it matters, so say which is meant. Beyond that, the thing a recipe site actually wants is **`Recipe` structured data**: Google renders recipes as rich results with a photograph, a star rating, the cook time and the calorie count, and that presentation is worth more traffic than the content type itself — so check what JSON-LD this emits, or plan to add `schema_metatag` alongside it.

---

- Build a recipe website.
- Store ingredients as structured data.
- Scale a recipe to different servings.
- List recipes containing an ingredient.
- Convert between metric and imperial.
- Build a shopping list from recipes.
- Publish a restaurant's dishes.
- Add cooking times and yields.
- Support a food blog.
- Build a community cookbook.
- Publish a family recipe archive.
- Add nutritional information.
- Support a meal-planning site.
- Publish recipes with rich results.
- Categorise recipes by cuisine.
- Search recipes by ingredient.
- Build a bakery's product pages.
- Publish a dietary-restriction index.
