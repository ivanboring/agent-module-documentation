<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Email Message adds a compound field type that stores an email subject alongside a formatted (text_long) body.
---
The field type `email_message` extends core's `TextLongItem`, adding a required `subject` string column while reusing the text_long body (`value` + `format`, exposed through `processed`). It ships a default widget (subject textfield + formatted body textarea) and a default formatter. Helper methods `getEmailSubject()` and `getEmailBody()` expose the two parts to code, and `isEmpty()` treats the item as empty unless both subject and body are present.

Use it wherever an entity needs to carry a ready-to-send email as data — notification templates, per-node autoresponders, or configurable messages consumed by a mailer or an ECA/Rules workflow. Setup is the usual add-field flow on any fieldable entity; because the body is a formatted text field, the text format's filters/permissions govern what markup editors may enter.
---
- Store a notification email (subject + body) on a content type
- Attach a per-node autoresponder message to a form node
- Hold a configurable confirmation email on an entity
- Provide editors a subject + rich-text body pair in one field
- Feed the stored subject/body into a custom mail-sending routine
- Use `getEmailSubject()` / `getEmailBody()` from code or a workflow
- Build reusable email templates as entity content
- Keep marketing email copy alongside a campaign entity
- Let content editors edit email wording without code
- Render the message with the default formatter on the entity view
- Migrate email templates in via the field's two properties
- Require both subject and body before an entity validates as non-empty
- Apply a specific text format to the email body
- Generate sample email content in tests via generateSampleValue()
- Store event reminder emails on event nodes
- Pair a subject line with a formatted body for digest messages
