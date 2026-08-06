<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Views Taxonomy Parent ID from Term (views_taxonomy_parent_id_from_term) — agent index

Contextual filter resolving a term to its **parent's id**. Version **2.0.1**.
Core **`^10.3 || ^11.0`** — current Drupal only. No dependencies, routes or permissions.

Answers what Views cannot easily do: "the siblings of this term", "the section this page belongs
to" — hierarchy-driven navigation without a hand-maintained menu.

**Two things to plan:** a **top-level term has no parent**, so define the fallback or the View
returns empty on exactly the pages where section navigation is most visible; and Drupal's taxonomy
allows **multiple parents** — decide which one the filter uses before relying on it.