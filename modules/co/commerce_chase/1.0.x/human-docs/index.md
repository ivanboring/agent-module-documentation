# Commerce Chase — manual setup guide

**Commerce Chase** (`commerce_chase`) integrates **Chase Paymentech** card
processing with Drupal Commerce, letting your store charge cards through Chase's
**Orbital** payment gateway. It is the module to reach for when your merchant
account is with Chase and you want card payments handled through their processor
rather than a redirect to a third‑party page.

The Drupal 8+ version provides an **onsite** payment gateway that combines Orbital's
**Hosted Payment Form** with Chase's **SOAP API**. Card entry happens through the
hosted form (which keeps raw card data off your server), while the SOAP API drives
the transaction. The implementation assumes your merchant account uses **IP‑based
SOAP authentication**, so no username/password is required — Chase recognises your
server by its whitelisted IP address instead. (Username/password authentication
isn't built in; the maintainers note patches are welcome.)

Because this is a card gateway, treat it with the usual care: run your checkout
over **HTTPS**, keep your Chase API credentials out of version control (store them
in environment variables, referenced through a Key entity where practical), and
make sure your PCI‑compliance configuration matches how card data flows. See
[Configuration](configuration/index.md) for the setup and these safeguards.

Commerce Chase depends on Commerce **Payment** (`commerce_payment`) and works on
Drupal 10 and 11. The current release is an **alpha** and the project is minimally
maintained, so pin your version, test thoroughly, and don't assume production
readiness without your own verification.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install the module with Composer and
   enable it alongside Commerce Payment.
2. [Configuration](configuration/index.md) — adding the Chase (Orbital) gateway,
   entering credentials, and the IP‑authentication and HTTPS safeguards.

## Where it lives in the admin menu

Like every Commerce payment method, Chase is set up under **Administration →
Commerce → Configuration → Payment gateways**
(`/admin/commerce/config/payment-gateways`). You add a gateway there and choose the
Chase (Orbital) plugin.
