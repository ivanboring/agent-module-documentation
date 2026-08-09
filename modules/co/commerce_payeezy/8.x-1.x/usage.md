<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Commerce Payeezy provides a Payeezy payment gateway for Drupal Commerce.

---

Commerce Payeezy provides a **Payeezy (First Data) payment gateway** for Drupal Commerce — with a hosted
(redirect) gateway and an on-site gateway. It depends on Commerce, Commerce Payment and Commerce Order.

Use it to accept Payeezy payments. **Security caveat (this version): the hosted-gateway return handler does
not abort when the payment signature verification fails.** `HostedGateway::onReturn()` recomputes an HMAC
(`hash(md5|sha1, response_key . x_login . x_trans_id . x_amount)`) and compares it to the request's
`x_MD5_Hash`/`x_SHA1_Hash`. When the response code is 1 but the HMAC does **not** match, the `else` branch only
prints "Payment was not processed" and **returns without throwing** — so the Commerce return completes and the
order is **placed with no verified payment** (a returning request with `x_response_code=1` and a wrong/absent
hash completes an order **unpaid**). The recorded amount uses `$order->getTotalPrice()` (server-side, good), so
the vector is the missing throw, not amount tampering. Secondary: the compare is PHP `==` (non-constant-time +
type-juggling; should be `hash_equals()`). Until patched, **throw a `PaymentGatewayException` on signature
mismatch** (as the module already does for a bad response code) and use `hash_equals()`. Store the Payeezy
`response_key`/credentials as secrets. See the local security.md.

---

- Provide a Payeezy (First Data) gateway.
- Offer hosted and on-site gateways.
- Recompute the return HMAC.
- KNOW a failed signature does NOT abort the return.
- Understand an order can complete unpaid.
- Patch onReturn to throw on HMAC mismatch.
- Use hash_equals() instead of ==.
- Know the amount is server-side (getTotalPrice).
- Store response_key/credentials as secrets.
- Depend on Commerce Payment/Order.
- Have no access-control role.
- Configure the Payeezy credentials.
- Handle Payeezy payments.
- Verify the return.
- Configure the gateway.
- Secure the callback.
- Guard against unpaid completion.
- Process payments.
- Patch the gateway.
- Provide Payeezy payments.
