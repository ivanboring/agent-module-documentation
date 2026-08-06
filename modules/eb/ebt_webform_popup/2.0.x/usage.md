<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
EBT Webform Popup places a button that opens a webform in a popup.

---

A form that occupies a section of a page competes with the page; a form behind a button appears when someone has decided they want it. For a "request a callback", "book a demo" or "ask a question" flow, the popup is usually the right shape — the page keeps its narrative and the form is one click away.

This is the Extra Block Types family's version, built from `ebt_basic_button` for the trigger, `paragraphs` for the structure and `webform` for the form itself, so the form is an ordinary webform with all its handlers, validation and access intact.

**Modal accessibility is the thing to verify**, and it is the same list as for any dialog: focus must move into the popup when it opens, must not escape to the page behind while it is open, Escape must close it, and focus must return to the button afterwards. A form in a modal that traps focus is a form a keyboard user cannot submit or leave.

Two other points. A form only reachable behind a button is invisible to anyone whose JavaScript fails, so if the form matters, a non-JS path to it is worth having. And a popup form on a public page will be found by bots as readily as an inline one — the site's CAPTCHA or honeypot needs to apply.

---

- Open a webform from a button.
- Keep a page's narrative uninterrupted.
- Add a request-a-callback flow.
- Show a booking form on demand.
- Reuse an existing webform in a popup.
- Keep webform handlers and validation intact.
- Verify focus moves into the modal.
- Confirm Escape closes the popup.
- Check focus returns to the button.
- Avoid trapping keyboard users.
- Provide a non-JavaScript path to the form.
- Apply spam protection to a popup form.
- Place the button in a paragraph.
- Style the popup to match the site.
- Audit modal forms for accessibility.
