<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Views Contact Form (views_contact_form) — agent index

Makes a contact form available as a Views **field or area** — a form per row, or one for the result
set. Depends on core `views`. Version **2.0.3**.
Core requirement `^8 || ^9 || ^10 || ^11`.

**Where it fits:** any directory — staff list, supplier index, member directory, branch listing —
where the alternative is linking to a separate contact route, costing a page load and the visitor's
context.

**Three things need care, because a contact form is the most-abused form on any site:**
1. **Spam is immediate.** An unprotected contact form receives automated submissions within days.
   Honeypot/captcha and core's **flood control** are not optional — and **a form per row multiplies
   whatever protection the site has by the number of rows**.
2. **Address disclosure.** Core's personal contact form deliberately sends to a user **without
   revealing their address**. Check that property survives — neither the markup nor a Views field
   beside it should expose the recipient's email.
3. **Many forms on one page is a Form API question.** Each needs a distinct form id and its own
   token; a page rendering fifty forms is fifty sets of build state. Measure before shipping a
   directory of a thousand.
