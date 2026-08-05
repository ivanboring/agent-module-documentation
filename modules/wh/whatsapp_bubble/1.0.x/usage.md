<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Whatsapp Bubble adds the floating WhatsApp button familiar from small-business sites: a fixed-position link that opens a chat with a configured number.

---

The implementation is straightforward — a configuration form at `/admin/config/services/whatsapp-bubble` for the number and message, a block plugin in `src/Plugin`, `templates/wab.html.twig` for the markup and `css/whatsapp_bubble.css` for the fixed positioning — with no dependencies beyond core and nothing stored per user. The route is gated by `access administration pages`, which is a slightly loose choice for a form that changes a public contact channel: that permission is granted to fairly ordinary staff roles on many sites, and it is weaker than the `administer site configuration` most similar modules use. Two things to weigh before adding it to a public site. The button is an outbound link to `wa.me`/`api.whatsapp.com`, so no Meta script is loaded and there is no tracking implication in the way an embedded widget would have — a genuine advantage of the link-based approach. But the configured phone number is published in the page source to every visitor, including scrapers, so it should be a business number rather than a personal one. Core requirement is `^10 || ^11`.

---

- Add a floating WhatsApp contact button.
- Let visitors start a chat from any page.
- Give a small business a direct contact channel.
- Prefill a message when the chat opens.
- Show the bubble only on selected pages.
- Provide contact on mobile without a form.
- Place the button as a block.
- Style the bubble to match a brand.
- Offer support chat without a widget script.
- Reduce friction for enquiries.
- Add a call-to-action on a landing page.
- Contact a sales team from a product page.
- Avoid loading a third-party chat script.
- Show a contact option to mobile visitors.
- Theme the bubble with a Twig override.
- Configure the number without a deployment.
- Add a support channel to a campaign site.
- Complement a contact form with instant chat.
