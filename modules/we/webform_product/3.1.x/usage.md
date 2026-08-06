<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Webform Product connects a webform to Drupal Commerce, so completing the form adds a product to the cart and the submission is paid for at checkout.

---

The paid form is a requirement that neither Webform nor Commerce answers alone. An event registration that costs money, a paid membership application, a workshop booking, a competition entry with a fee, a paid advertisement submission — each needs the form's data and the order's payment tied together, so that the submission is only complete when the payment is. Building that by hand means a submit handler creating an order item, a way to relate the submission to the order, and careful handling of the cases where the two diverge. This supplies the connection, requiring `webform` and three Commerce modules. Version **3.1.0** on core `^10.1 || ^11`; note that it could not be installed in this wave without Drupal Commerce, so the documentation is written from source with that stated. **The failure cases are the whole design and worth asking about specifically**, because they are where a paid-form integration goes wrong: a submission whose payment is abandoned at checkout, a payment that succeeds while the submission fails to save, an order edited or cancelled after the submission was accepted, and a duplicate submission from a shopper who went back. Each needs a defined outcome, and the one that matters commercially is the first — an unpaid submission sitting in the list looking identical to a paid one is how a registration desk ends up admitting people who never paid. Establish how the module marks paid versus pending before relying on it.

---

- Charge for an event registration.
- Take payment for a membership application.
- Sell a workshop booking through a form.
- Charge a competition entry fee.
- Take payment for a paid advertisement.
- Connect a form submission to an order.
- Sell a service with a details form.
- Charge for a training course booking.
- Take payment for a conference place.
- Sell a customised product via a form.
- Charge for a document request.
- Take payment for a permit application.
- Sell a sponsorship package.
- Charge for an inspection booking.
- Take payment for a class enrolment.
- Sell a form-configured product.
- Charge a submission fee.
- Connect Webform data to checkout.
