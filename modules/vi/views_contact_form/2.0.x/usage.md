<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Views Contact Form makes a contact form available as a Views field or area, so a listing can carry a contact form per row or one for the whole result set.

---

The pattern appears wherever a directory does: a staff list where each person has a "contact" form, a supplier index, a member directory, a listing of local branches. Without it, the contact form lives on its own route and the listing links to it, which costs a page load and loses the context the visitor was in. Rendering the form in the listing removes both. Version **2.0.3** on `^8` through `^11`, depending on core `views`. Three things need care, because a contact form is the most-abused form on any site. **Spam is the immediate reality**: an unprotected contact form receives automated submissions within days of going live, so honeypot or captcha and core's flood control are not optional extras — and a form rendered once per row multiplies whatever the site has by the number of rows. **Address disclosure** is the point of core's personal contact form design: it sends to the user without revealing their address, and that property has to survive being rendered in a listing, so check that neither the markup nor a Views field beside it exposes the recipient's email. And **many forms on one page is a Form API question** — each needs a distinct form id and its own token to submit correctly, and a page rendering fifty forms is fifty sets of build state, which is worth measuring before shipping a directory of a thousand.

---

- Add a contact form to a staff listing.
- Contact a supplier from a directory.
- Message a member from a listing.
- Contact a branch from its row.
- Avoid a separate contact page load.
- Keep the visitor in context.
- Add a form to a search results page.
- Contact an author from an article list.
- Build a directory with inline forms.
- Add a contact area to a view.
- Message a seller from a marketplace listing.
- Contact a service provider inline.
- Add a form to a map listing's rows.
- Build a support-contact directory.
- Message a group organiser.
- Add a contact field to a Views row.
- Contact an exhibitor from a listing.
- Reduce steps to make contact.
