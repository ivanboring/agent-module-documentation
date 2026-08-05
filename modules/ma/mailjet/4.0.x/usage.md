<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Mailjet routes Drupal's email through the Mailjet API and adds the marketing side — contact lists, subscription forms, campaigns and delivery statistics — as submodules.

---

The base module handles transactional delivery through the Mailjet API rather than SMTP, which gives deliverability handling and per-message tracking that local mail cannot. The submodules are where the scope widens considerably: **mailjet_list** manages contact lists, **mailjet_subscription** provides sign-up handling, **mailjet_campaign** covers campaigns, **mailjet_event** handles Mailjet's event callbacks, **mailjet_stats** surfaces delivery statistics, and **mailjet_commerce** connects it to Drupal Commerce. That breadth is worth noting because enabling the project wholesale brings a marketing platform into the site, not just a mail transport. Requirements are `mailjet/mailjet-apiv3-php ^1.5`, `phpmailer/phpmailer` and Guzzle, with core `^9 || ^10 || ^11`. Three points: the **API key and secret are live credentials** belonging in environment variables, not exported configuration; **contact lists are personal data**, so synchronising subscribers to Mailjet is a processing arrangement that needs a lawful basis and a processor agreement; and the **event callback** submodule receives POSTs from Mailjet, which — as with any webhook — must be authenticated by signature rather than trusted because it arrived.

---

- Send transactional email through Mailjet.
- Improve deliverability over local mail.
- Manage contact lists from Drupal.
- Add a newsletter subscription form.
- Track email delivery statistics.
- Handle bounces and complaints.
- Send order confirmations via Mailjet.
- Sync Commerce customers to a list.
- Run a campaign from Drupal.
- Receive delivery events by webhook.
- Segment subscribers by list.
- Replace SMTP with an API transport.
- Report on open and click rates.
- Support a marketing team's workflow.
- Manage double opt-in.
- Send templated transactional mail.
- Track a campaign's performance.
- Integrate email with an e-commerce site.
