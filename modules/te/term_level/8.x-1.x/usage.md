<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Term Level is a field type that stores a taxonomy term together with a level, so a reference carries a degree as well as a subject.

---

The pattern appears wherever a tag is not a yes-or-no. A person's skills are not a list of technologies but a list of technologies with proficiencies — "PHP, advanced; French, conversational; project management, intermediate". A course's prerequisites have required levels. A supplier's certifications have grades. A job's requirements have minimums. Modelling that with a plain term reference loses the half of the information people actually search on: a directory that can find everyone tagged "French" but not everyone fluent in it has not answered the question. The alternatives are a term per combination, which multiplies the vocabulary by the number of levels and makes "any level of French" unaskable, or two parallel fields, which cannot express which level belongs to which term once there is more than one. Storing both in one field item is the correct shape. Version **8.x-1.1** on `^9.1 || ^10 || ^11`. Two things worth attaching. **The level scale should be a controlled list rather than free text or a number**, because the value of the field is comparison — "at least intermediate" is a query, and it needs the scale to be ordered and shared. And **self-assessed levels are self-assessed**: a skills directory built on them is a directory of what people say about themselves, which is useful and is not a qualification record, so anything consequential — a competency framework, a compliance register — needs a separate notion of who assessed the level and when.

---

- Record skills with proficiency levels.
- Store languages with fluency.
- Model course prerequisites with levels.
- Record certifications with grades.
- Build a searchable skills directory.
- Store competencies with ratings.
- Model job requirements with minimums.
- Record training completion levels.
- Find people fluent in a language.
- Store subject expertise with depth.
- Model supplier accreditation levels.
- Record volunteer skill levels.
- Build a staff expertise register.
- Store technology proficiencies.
- Model membership grades by category.
- Record instrument proficiency.
- Build a mentor-matching dataset.
- Store qualification levels by subject.
