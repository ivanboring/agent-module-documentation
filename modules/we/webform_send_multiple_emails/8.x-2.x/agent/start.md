<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Webform Send Multiple Emails (webform_send_multiple_emails) — agent index

Sends a webform submission to **each recipient in a separate email** rather than one message
addressed to all. Version **8.x-2.2**. Core `^8.8 || ^9 || ^10 || ^11`. Depends on `webform`.

**The privacy argument is the point, and worth stating to whoever configures the form:** Webform's
default handler puts every recipient in the To field, so each sees all the others. On a form
involving applicants, complainants or participants, that recipient list is itself personal data.

BCC avoids the disclosure but brings spam filtering, odd reply behaviour and no personalisation.

**The trade is volume:** one submission to forty recipients becomes forty messages. Check the mail
provider's rate limits and the sending domain's reputation first.