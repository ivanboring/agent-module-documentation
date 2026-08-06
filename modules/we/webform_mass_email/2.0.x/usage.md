<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Webform Mass Email sends a message to everyone who submitted a given webform.

---

The use is straightforward and recurring: an event was cancelled and everyone who registered needs telling; a form collected expressions of interest and the follow-up has to go out; a survey's respondents are owed the results; a booking's details have changed. The addresses are already in the submissions, and the alternative is exporting them to a spreadsheet and pasting them into a mail client — which loses the record of what was sent and puts a list of personal data on somebody's laptop. Doing it from the site keeps both in one place. Version **2.0.0** on `^8.8` through `^11`, requiring `webform_ui`. **This is a bulk-email capability over personal data, and the two things that go wrong are consent and mistakes.** On consent: submitting a form is not agreement to receive further email, so a message that is not the direct follow-up the submitter would expect needs a lawful basis of its own — "they gave us their address" covers telling them the event is cancelled and does not cover a newsletter. On mistakes: a bulk send is irreversible, so the recipient count should be visible before sending, a test send should be possible, and the **To** field must never be used — a form's respondents are not a mailing list and putting them in **To** or **CC** publishes every address to every recipient, which is among the most common and most reported data breaches in any sector. Two further notes: **large sends need queueing** rather than a single request, which will time out; and the site's mail must be able to deliver at that volume, which a default PHP mail configuration cannot.

---

- Tell registrants an event is cancelled.
- Follow up with everyone who applied.
- Send survey results to respondents.
- Notify submitters of a change.
- Email everyone who booked.
- Send a reminder to applicants.
- Contact expression-of-interest respondents.
- Notify a form's recipients of a deadline.
- Send updated joining instructions.
- Email everyone on a waiting list.
- Follow up a consultation's respondents.
- Notify entrants of a competition result.
- Send a correction to submitters.
- Contact volunteers who signed up.
- Email a workshop's registrants.
- Send a thank-you to participants.
- Notify submitters of a venue change.
- Contact respondents about a follow-up survey.
