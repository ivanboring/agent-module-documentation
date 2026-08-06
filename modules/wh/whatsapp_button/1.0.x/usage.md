<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
WhatsApp Button places a block containing a button that opens a WhatsApp conversation with a configured number.

---

In much of Latin America, South Asia, Africa, the Middle East and southern Europe, WhatsApp is how people contact a business — more reliably than a phone call, far more than a contact form, and a small business or a service organisation that offers it gets messages from people who would otherwise not have made contact at all. The mechanism is simple and worth knowing because it explains most of the module: a `https://wa.me/<number>?text=<message>` link opens the app on a phone or WhatsApp Web on a desktop, with an optional pre-filled message. There is no API, no account beyond the phone number, and no cost — which is the difference between this and `whatsapp` (documented in wave 74), which uses the Business API to *send* messages programmatically and requires an app, approved templates and a per-conversation charge. This is a link; that is an integration. Version **1.0.4** on `^9 || ^10 || ^11`, in the Social Media package. Three things worth attaching. **The number is published**, so it should be a business number rather than someone's personal mobile — the button puts it in the page source for anyone to harvest. **A conversation started this way is unmanaged** — it arrives in an individual's WhatsApp rather than in a shared inbox, with no assignment, no record and no continuity when that person is away, which is a business-process question before it is a technical one. And **it is a third-party link rather than an embed**, so it loads nothing and raises no consent question, which is the one respect in which it is simpler than every other social integration.

---

- Add a WhatsApp contact button.
- Let visitors message a business.
- Offer chat contact on mobile.
- Add a click-to-chat button.
- Provide contact for a local business.
- Offer WhatsApp support.
- Add a pre-filled enquiry message.
- Provide contact in a market where WhatsApp dominates.
- Add a chat button to a product page.
- Offer booking enquiries by message.
- Provide a low-friction contact option.
- Add a support button to a footer.
- Offer contact without a form.
- Provide a mobile-first contact route.
- Add a chat button for a service page.
- Offer enquiry contact for a listing.
- Provide a WhatsApp link in a sidebar.
- Add a contact button per page.
