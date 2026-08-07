<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Buttons Config lets a site change the label on the submit button of content and media type forms.

---

"Save" is the right word for a page and the wrong one for a good many other things. A job application is *submitted*; an incident report is *filed*; a draft is *saved* but a moderated item is *sent for review*. When the button says something other than what the action does, editors hesitate, and on a form used by the public they hesitate visibly — an application form whose button says "Save" leaves people unsure whether they have applied.

Changing the label per content type is a small change with a real effect on that hesitation, and doing it as configuration keeps it out of a form alter in a site module where nobody will find it.

**The label is a promise about what happens, so make it accurate rather than merely friendlier.** If the button says "Publish" but the content type is moderated and the item goes to review, the wording has made the interface less truthful rather than more welcoming. Match the word to the actual outcome, including what the moderation workflow does.

Worth noting that button text is user-facing copy: it needs translating on a multilingual site, and a label set as configuration should go through the usual translation route rather than being typed once in one language.

---

- Rename a form's submit button.
- Say Submit on an application form.
- Say File on an incident report.
- Say Send for review on a moderated type.
- Reduce editor hesitation.
- Reassure public form users.
- Keep the change in configuration.
- Avoid a hidden form alter.
- Match wording to the real outcome.
- Avoid promising Publish on a moderated type.
- Translate button labels.
- Set labels per content type.
- Set labels per media type.
- Audit button wording across forms.
- Document the module's behaviour for the team.
- Review it during a site audit.
- Verify its assumptions after an upgrade.
