<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Profile Complete Percentage (pcp) — agent index

Calculates and displays how complete a user's profile is. Configure at `/admin/config/…/pcp`.
Version **2.0.0**. Core requirement `^9 || ^10 || ^11`.

**Separate the two purposes — they want different things:**
- **for the user**, a **prompt** toward adding a photograph, biography or interests;
- **for the organisation**, a **metric** — how many members supplied the information the site was
  built around, which is the number that says whether a directory, matching feature or segmentation
  will actually work.

**Three things worth attaching:**
1. **What counts as complete is a value judgement encoded as configuration.** Including **every**
   field makes 100% unreachable and the bar meaningless — configure the fields that genuinely
   matter, which is a shorter list than the profile has.
2. **Percentages create pressure to fill fields.** A profile asking for a date of birth, phone
   number or photograph is using the bar to **extract data the user might otherwise decline** —
   fine where the fields are genuinely needed, a **dark pattern** where they are not.
3. **The percentage is derived data about a person.** Showing another member's completion score in a
   directory says something about them **they did not choose to publish**.

Why the pattern works at all: an **incomplete** task is uncomfortable in a way an unstarted one is
not — a bar at 60% draws people back where a page of empty fields does not.
