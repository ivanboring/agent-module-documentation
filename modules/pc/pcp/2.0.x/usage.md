<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Profile Complete Percentage calculates how much of a user's profile has been filled in and displays it as a percentage.

---

The progress bar on a profile is one of the most reliably effective pieces of interface in any product, and the reason is well documented: an incomplete task is uncomfortable in a way that an unstarted one is not, so a bar at 60% draws people back to finish where a page of empty fields does not. Sites want the completion data for two different purposes, and they are worth separating. **For the user**, it is a prompt — a nudge toward adding a photograph, a biography, a set of interests, which makes the community better and the profile more useful. **For the organisation**, it is a metric — how many members have supplied the information the site was built around, which is the number that says whether a directory, a matching feature or a mailing segmentation is actually going to work. Version **2.0.0** on `^9 || ^10 || ^11`. Three things worth attaching. **What counts as complete is a value judgement encoded as configuration** — including every field makes 100% unreachable and the bar meaningless, so the useful configuration is the fields that genuinely matter, which is a smaller list than the profile has. **Percentages create pressure to fill fields**, so a profile asking for a date of birth, a phone number or a photograph is using the bar to extract data the user might otherwise decline — which is fine if the fields are genuinely needed and is a dark pattern if they are not. And **the percentage is derived data about a person**, so where it is displayed matters: showing another member's completion score on a directory says something about them that they did not choose to publish.

---

- Show a profile completion bar.
- Encourage users to add a photograph.
- Prompt members to complete their profile.
- Measure how many members are complete.
- Improve directory data quality.
- Support an onboarding flow.
- Show remaining profile steps.
- Encourage biography completion.
- Report profile completeness to admins.
- Improve a matching feature's data.
- Nudge users to add interests.
- Track community profile quality.
- Support a membership onboarding.
- Show completeness on a dashboard.
- Encourage contact detail completion.
- Segment members by profile completeness.
- Improve a networking site's data.
- Prompt for missing profile fields.
