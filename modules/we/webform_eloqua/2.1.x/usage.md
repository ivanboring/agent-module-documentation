<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Webform Eloqua adds a Webform handler that sends submissions to Oracle Eloqua.

---

The pairing is the common one: Webform collects, Eloqua does the marketing automation, and the handler is the join. Doing it as a Webform handler rather than a custom submit function means it is configured per form in the UI, can be disabled without a deployment, and participates in Webform's own handler ordering and conditions.

It builds on `eloqua_api_redux` for the connection, which is the right layering — one credential, several consumers.

**Two things belong in any form-to-CRM integration.** A submission posted to a marketing platform is **personal data leaving the site**, and the person filling the form should have been told; that is a consent and privacy-notice question decided when the form is designed, not when the handler is enabled. And **handler failure needs a decision**: if Eloqua is unreachable, does the submission still save locally, does the user see an error, and is anyone told that submissions stopped flowing? Silent handler failure is how an organisation discovers three weeks later that a campaign collected nothing.

Worth checking whether the handler queues. A synchronous post ties form submission to Eloqua's availability, which turns their outage into your broken form.

---

- Send webform submissions to Eloqua.
- Configure the handler per form.
- Disable the integration without a deployment.
- Reuse one Eloqua credential.
- Order the handler among others.
- Tell users their data goes to Eloqua.
- Cover the transfer in a privacy notice.
- Decide what happens when Eloqua is down.
- Keep the submission locally on failure.
- Alert when submissions stop flowing.
- Check whether the handler queues.
- Avoid tying submission to vendor uptime.
- Map form fields to Eloqua fields.
- Audit forms posting to a CRM.
- Document the module's behaviour for the team.
- Review it during a site audit.
- Verify its assumptions after an upgrade.
