<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Basket PayPal calls the PayPal Orders API from your server.

---

Basket PayPal adds **PayPal payment** to the Basket store module — using PayPal's JavaScript SDK (Smart
Buttons) on the front end and the **PayPal Orders API from the server** to create and capture orders. It
provides its own permissions, in the Online store package.

Use it to accept PayPal on a Basket store. Its payment trust boundary is **implemented correctly** (verified):
the order is **created server-side** with the order's amount (`getOrdersController()->ordersCreate()`), and on
approval the payment is **captured server-side** (`ordersCapture()`) with the module reading the **capture
status from PayPal's API response** and only fulfilling when the status is `COMPLETED` — so it does **not**
trust a client-supplied "paid" status, and the amount is server-controlled at order creation. Handle the PayPal
**client secret/credentials** as secrets (config/env), and use HTTPS. It has no access-control role beyond its
permission. Configure the PayPal credentials.

---

- Add PayPal payment to Basket.
- Use PayPal Smart Buttons + Orders API.
- Create the order server-side.
- Capture the payment server-side.
- Read the capture status from PayPal.
- Fulfil only when COMPLETED.
- NOT trust a client-supplied status.
- Keep the amount server-controlled.
- Store PayPal credentials as secrets.
- Use HTTPS.
- Provide its own permissions.
- Configure the PayPal credentials.
- Handle PayPal payments.
- Verify payments.
- Configure the gateway.
- Capture orders.
- Handle the integration.
- Process payments.
- Secure the credentials.
- Provide PayPal payment.
