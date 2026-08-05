<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Template Whisperer gives editors a field for choosing a page template, and turns that choice into a Twig template suggestion the theme can implement.

---

The recurring requirement is that one content type needs several presentations — a standard article, a long-read, a photo essay — and the choice belongs to the editor rather than to a URL pattern or a taxonomy term used as a proxy. Drupal's mechanism for alternative rendering is the **theme suggestion**, and the usual way to drive one from content is a `hook_theme_suggestions_node_alter()` reading a field, written once per project and undocumented for the next developer. This formalises it: suggestions are declared as configuration entities, editors pick one from a field, and the theme implements `node--<suggestion>.html.twig`. The value is the contract — the available templates are a listable, exportable set rather than a convention someone has to discover from the theme's file names. Version **4.1.1** with a core requirement of **`^11.1 || ^12`**, which is tight: Drupal 11.1 or later only, reaching into a major that does not exist yet. Depends on core `field` and `views`, with `administer template whisperer` and a separate permission for the suggestion entities. Two things worth attaching. **A missing template fails silently**: a suggestion with no corresponding Twig file falls back to the default template, so the editor's choice appears to do nothing, which is the commonest support question this pattern generates — keep the declared set and the theme's files in step, and check after every theme change. And **a template choice is content**, so it exports with the node, travels with a migration and needs a decision when a suggestion is removed and content still references it.

---

- Let editors choose a page template.
- Offer a long-read layout for articles.
- Add a photo-essay presentation.
- Formalise theme suggestions.
- Avoid a bespoke suggestions hook.
- Give a content type several layouts.
- Export available templates as configuration.
- Document template options for editors.
- Choose a landing page template.
- Support a design system's page types.
- Offer a print-oriented template.
- Let a campaign page differ.
- Add a template field to a content type.
- Support a magazine's article variants.
- Provide a template picker to editors.
- Keep template options discoverable.
- Support a multi-brand theme.
- Offer a minimal template for a page.
