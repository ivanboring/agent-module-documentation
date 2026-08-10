<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Commerce TaxJar provides a Drupal Commerce connector for TaxJar.

---

Commerce TaxJar connects **Drupal Commerce to TaxJar** for sales-tax calculation — computing tax on orders
via TaxJar's API (US sales tax, nexus/rates) instead of manual tax rules. It depends on Commerce, Order, Store,
Tax and Payment.

Use it to calculate sales tax via TaxJar. It is an e-commerce/tax feature. Security/data handling: it **sends
order data (addresses, amounts) to TaxJar** to calculate tax (external egress — inherent to the service) and
authenticates with a **TaxJar API token** — store it as a **secret** (env/Key) over HTTPS. It has no
access-control role. Configure the TaxJar credentials and nexus.

---

- Calculate sales tax via TaxJar.
- Compute US sales tax/nexus.
- Use TaxJar's API.
- Depend on Commerce Tax/Order/Store.
- Send order data to TaxJar (egress).
- Serve e-commerce tax.
- Store the TaxJar API token as a secret.
- Use HTTPS.
- Have no access-control role.
- Configure the credentials and nexus.
- Handle TaxJar tax.
- Calculate tax.
- Configure the connector.
- Handle the integration.
- Compute tax.
- Send order data.
- Handle taxation.
- Calculate rates.
- Secure the token.
- Provide TaxJar tax.
