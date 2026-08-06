<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Webform Mass Email (webform_mass_email) — agent index

Sends a message to **everyone who submitted a given webform**. Requires `webform_ui`.
Configure at `/admin/structure/webform/config/mass_email`. Version **2.0.0**.
Core requirement `^8.8 || ^9 || ^10 || ^11`.

**Why it beats the alternative:** exporting addresses to a spreadsheet and pasting them into a mail
client loses the record of what was sent and **puts a list of personal data on somebody's laptop**.

**This is bulk email over personal data. Two things go wrong: consent and mistakes.**

**Consent** — submitting a form is **not** agreement to receive further email. *"They gave us their
address"* covers **telling them the event is cancelled**; it does **not** cover a newsletter.
Anything beyond the direct follow-up the submitter would expect needs its own lawful basis.

**Mistakes** — a bulk send is irreversible:
- the **recipient count must be visible before sending**;
- a **test send** should be possible;
- **the `To` field must never be used.** A form's respondents are not a mailing list, and putting
  them in `To` or `CC` **publishes every address to every recipient** — among the most commonly
  reported data breaches in any sector.

**Two further notes:** large sends need **queueing** rather than one request, which will time out;
and the site's mail must **deliver at that volume**, which a default PHP mail configuration cannot
(see `sparkpost`, wave 71; `symfony_mailer_office365`, wave 71; `govuk_notify`, same wave).
