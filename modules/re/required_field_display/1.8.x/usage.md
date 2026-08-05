<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Required Field Display marks which fields are required on the Manage Fields screen, so a site builder can see a bundle's required fields at a glance instead of opening each field's settings.

---

Field UI lists a bundle's fields with their label, machine name and type — and not whether they are required, which is one of the first things anyone auditing a content type wants to know. Finding out means opening each field's edit form in turn, which on a twenty-field bundle is twenty page loads to answer a question the listing could answer directly. This module adds the indicator: `required_field_display.module` alters the Field UI table and `css/required_field_display_ui.css` styles the marker, attached through `required_field_display.libraries.yml`. That is the whole module — no dependencies, no routes, no permissions, no configuration — with a wide core range of `^8.8 || ^9 || ^10 || ^11`. It is purely an administrative display change, so it affects nothing about the fields themselves and is free to add or remove. The obvious use is auditing a content type before a migration or a form redesign, where knowing which fields are mandatory determines what the source data must supply.

---

- See which fields are required at a glance.
- Audit a content type before a migration.
- Check required fields without opening each one.
- Plan a form redesign.
- Verify a data model against a specification.
- Document a bundle's mandatory fields.
- Spot a field made required by mistake.
- Review required fields with a stakeholder.
- Check what an import must supply.
- Compare bundles' requirements.
- Speed up a content model review.
- Onboard a developer to a content type.
- Confirm a change to field requirements.
- Reduce clicks in Field UI.
- Prepare a webform equivalent of a bundle.
- Check requirements before bulk editing.
- Review a migrated content type.
- Support a content audit.
