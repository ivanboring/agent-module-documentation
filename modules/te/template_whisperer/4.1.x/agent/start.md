<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Template Whisperer (template_whisperer) — agent index

Editors pick a **page template** from a field; the choice becomes a **Twig theme suggestion**.
Suggestions are **configuration entities**. Depends on core `field` and `views`. Permissions:
`administer template whisperer`, plus one for the suggestion entities. Version **4.1.1**.
**Core requirement `^11.1 || ^12`** — Drupal 11.1+ only, reaching into a major that does not exist
yet.

**What it formalises:** the usual way to drive alternative rendering from content is a
`hook_theme_suggestions_node_alter()` reading a field — written once per project and undocumented
for the next developer. Here the available templates are a **listable, exportable set** rather than
a convention discoverable only from the theme's file names. That contract is the value.

**Two things worth attaching:**
1. **A missing template fails silently.** A suggestion with no `node--<suggestion>.html.twig` falls
   back to the default, so the editor's choice appears to do nothing — the commonest support
   question this pattern generates. Keep the declared set and the theme's files in step, and check
   after every theme change.
2. **A template choice is content.** It exports with the node, travels with a migration, and needs
   a decision when a suggestion is removed while content still references it.
