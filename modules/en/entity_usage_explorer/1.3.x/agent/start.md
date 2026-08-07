<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Entity Usage Explorer (entity_usage_explorer) — agent index

Shows **where each entity is referenced** across the site. Version **1.3.0**. Core `^10 || ^11`.

Answers the question every content audit stalls on — "can I delete this?" — which otherwise gets
answered "nobody is sure", producing a site where nothing is ever deleted.

**Two caveats:** it sees the references it knows how to see. A link typed into body text, a path
hard-coded in a template, or an id passed through a custom module are invisible to it — so **"no
usages" means "no tracked usages"**, which is exactly the case where a deletion surprises someone.
And the report **aggregates across the site**, so it can reveal that a restricted entity is
referenced from places the viewer cannot otherwise see.