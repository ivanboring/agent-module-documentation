<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Sparkpost sends Drupal's outgoing mail through SparkPost, a transactional email service, instead of the local PHP mail function.

---

Mail sent by `mail()` from a web server largely does not arrive. It fails SPF and DKIM checks, the sending IP has no reputation, and the messages that matter most — password resets, order confirmations, account activations — are the ones silently filed as spam. A transactional provider fixes this by owning the delivery infrastructure, authenticating the domain properly and reporting on what happened to each message, which is the part that turns "the email did not arrive" from a guess into a fact. SparkPost is one of the established providers alongside SendGrid, Mailgun and Postmark. This module supplies the Drupal integration with a settings form and a test-send form at `/admin/config/services/sparkpost`, version **3.0.0-alpha2** on `^10 || ^11` — an **alpha**, which for a component that carries every password reset on the site is worth weighing rather than glossing. Two things to get right. The **API key is a live credential** that can send mail as your domain and read delivery data: store it in an environment variable and reference it through a Key entity, never in exported configuration, and scope it to sending rather than issuing an account-wide key. And **the delivery path needs a failure plan** — when the provider is unreachable or the key is rotated without updating the site, Drupal's mail simply stops, usually without anyone noticing until a user reports a missing reset, so monitor the provider's bounce and rejection reporting rather than assuming silence means success.

---

- Deliver password resets reliably.
- Stop transactional mail going to spam.
- Send order confirmations through a provider.
- Authenticate a sending domain.
- Get delivery reporting for site email.
- Replace PHP mail().
- Send account activation emails.
- Diagnose a missing email.
- Improve email deliverability.
- Track bounces and complaints.
- Send from a shared hosting environment.
- Test mail configuration from the admin UI.
- Meet a deliverability requirement.
- Send high volumes of transactional mail.
- Support a commerce site's receipts.
- Route mail through an approved provider.
- Add DKIM-signed sending.
- Monitor email delivery rates.
