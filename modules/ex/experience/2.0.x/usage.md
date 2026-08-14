<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Adds an 'experience' field type that captures a duration of experience in years and months and displays it like "02 Year(s) 07 Month(s)".

---

The module defines a custom Field API field type (`experience`) with its own item class (`ExperienceItem`), item list, default widget (`ExperienceDefaultWidget`) and two formatters (`ExperienceDefaultFormatter` and `ExperienceMonthFormatter`). It is intended for use cases like job portals, application forms and user registration where a total or relevant years/months of experience must be captured. The widget presents year and month select lists; the year list range is configurable (start/end year) and a "Fresher" option is supported for zero experience. Label position (labels above the selects, or inserted "within" the select as its first option) is configurable in the field's advanced settings. A small JS library (`drupal.experience`) supports the widget UI.

Beyond input/display, the module integrates with Views: `ExperienceFilter` (defined via `experience.views.inc`) provides a Views filter so lists can be filtered by experience. The module has no routes, permissions, services or configuration pages of its own — it is purely a field-type provider (package `Field types`) depending only on core `field`. Setup is: add an Experience field to a content type or user, configure the year range/label position, and arrange the display formatter.

---

- Add an experience field to a content type.
- Add an experience field to user registration.
- Capture total years and months of experience.
- Offer a "Fresher" (zero experience) option.
- Configure the selectable start/end year range.
- Display experience as "2 Year(s) 5 Month(s)".
- Use the month-only formatter for compact display.
- Position labels above the year/month selects.
- Insert labels within the select lists as first option.
- Filter Views results by experience.
- Build a job-portal candidate profile field.
- Collect relevant field experience on an application form.
- Sort/display candidates by experience via Views.
- Configure widget and display independently via Field UI.
- Reuse the field across multiple bundles.
- Show experience in a teaser or full node display.
- Add experience to a taxonomy term or paragraph.
- Present experience data in an admin listing.
- Standardize experience capture across forms.
- Translate/label the year and month parts.
- Restrict the year range to realistic values.