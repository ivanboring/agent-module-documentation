<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Prevent User Delete Reassign removes the "Delete the account and make its content belong to the Anonymous user" option from Drupal's account cancellation form.

---

Drupal offers four cancellation methods and this is the most quietly destructive of them. It keeps every node, comment and file the user created, and sets their author to Anonymous — so the content survives and the record of who wrote it does not. Nothing warns that the operation is irreversible, and it is: the association is gone, and reconstructing it from revisions is at best partial. The consequences land later. An editorial site loses attribution on hundreds of articles. A site with an audit obligation loses the accountability trail that made the audit possible. A site relying on "own content" permissions finds that nobody owns anything, so nobody can edit it. And GDPR is not the justification people reach for it with — erasure asks for the personal data to go, and anonymising the author link while keeping content that names the person in its text has not achieved that. Removing the option forces a deliberate choice among the alternatives: disable the account, delete the account and its content, or reassign authorship to a named archive account, which keeps the content editable and honest about no longer being that person's. Version **1.0.2** on `^8` through `^11`, no configuration — it removes the option. Worth checking that the site's own scripts and any `drush user:cancel` invocations do not pass the removed method explicitly, since a UI change does not constrain the API.

---

- Stop content being orphaned to Anonymous.
- Preserve authorship when accounts are removed.
- Protect an audit trail.
- Force a deliberate cancellation choice.
- Avoid losing article attribution.
- Keep "own content" permissions meaningful.
- Prevent an irreversible mistake.
- Support an editorial accountability policy.
- Remove a dangerous cancellation option.
- Protect a publication's byline data.
- Avoid unowned content after a departure.
- Support a records-retention requirement.
- Reduce administrator error.
- Keep content attributable after offboarding.
- Guide administrators to reassign instead.
- Protect a community's post history.
- Avoid breaking author-based views.
- Support a compliance review.
