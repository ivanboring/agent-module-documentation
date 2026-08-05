<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Select Other is a widget for list fields that offers the configured options plus an "Other" choice revealing a text field.

---

The pattern is universal in forms and absent from Drupal's widgets. Any question with a list of answers has a tail: "How did you hear about us?" with six options and a seventh that is whatever the person actually did; a job title, a country of study, a referral source. Forcing the tail into "Other" with no text box discards the information; adding a separate always-visible "Other, please specify" field clutters the form for everyone. A combined widget is the right answer and Drupal core does not have one, which is why this module is a direct port of a Drupal 6/7 CCK feature — the `cck_` prefix is the giveaway. Version **2.0.0-alpha3**, and note the core requirement **`^11.3 || ^12`**, which is very tight: Drupal 11.3 or later only, reaching into a major that does not exist yet. Two things the pattern raises. **Where the "other" value is stored** is the design decision — writing it into the same list field means the field's allowed-values constraint is being bypassed and the stored value is no longer from the list, which affects facets, views filters and anything else assuming the list is closed; writing it to a second field keeps the data clean and needs two fields. Establish which this does before designing reports on it. And **free text collected this way is user input on display**, so it needs the same escaping as any other, and it accumulates near-duplicates that need periodic reconciliation if anyone intends to analyse it.

---

- Add an "Other" option to a select list.
- Collect a referral source not in the list.
- Let users specify a job title.
- Capture answers outside a fixed list.
- Avoid a separate "please specify" field.
- Improve a registration form's data.
- Collect an unlisted country or region.
- Add free text to a list field.
- Support an evolving list of options.
- Reduce forced miscategorisation.
- Collect a custom department name.
- Improve survey answer quality.
- Add an escape hatch to a taxonomy select.
- Support an open-ended question.
- Discover missing list options.
- Collect a specialism not yet listed.
- Improve a job application form.
- Port a CCK Select Other field.
