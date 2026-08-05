<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Entity Relationship Diagrams draws the site's entity types and the references between them as an interactive diagram, so the data model can be seen rather than reconstructed from Field UI.

---

Understanding an unfamiliar Drupal site means working out which entity types exist and how they point at each other, and Field UI answers that one bundle at a time. A diagram answers it at once, which is why this is one of the first things an agency wants when inheriting a site. The module builds it dynamically from the live entity definitions — `EntityRelationshipDiagramController::getMainDiagram()` renders it at `/admin/structure/erd`, an AJAX route persists layout changes so an arrangement survives a reload, and a settings form controls what is included. All routes sit behind `administer erd`. The dependency list is the thing to weigh: four jQuery UI modules — `jquery_ui`, `jquery_ui_menu`, `jquery_ui_autocomplete`, `jquery_ui_resizable` — carrying components Drupal removed from core after Drupal 9, and jQuery UI is in long-term maintenance rather than active development. Core requirement is `^9.4 || ^10 || ^11`. For documentation that needs to leave the site, `content_model_documentation` (wave 62) exports and renders Mermaid diagrams; this one is the interactive, in-site view.

---

- See the site's entity relationships at a glance.
- Understand an inherited Drupal site.
- Show the data model to a new developer.
- Plan a refactor of entity references.
- Find which bundles reference a taxonomy.
- Document the model for a handover.
- Explore reference chains interactively.
- Rearrange a diagram and keep the layout.
- Identify orphaned entity types.
- Explain the model to a stakeholder.
- Check the impact of removing a field.
- Review the model before a migration.
- Spot unexpected reference relationships.
- Support an architecture review.
- Teach Drupal's entity system with a real site.
- Restrict diagram access to developers.
- Compare the model against a specification.
- Find circular references.
