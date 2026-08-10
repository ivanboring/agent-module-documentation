<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Commerce Tax WA calculates tax for Washington State by looking up rates.

---

Commerce Tax Washington calculates **Washington State (US) sales tax** for Drupal Commerce — looking up the
destination-based rate (WA uses destination sourcing with many local rates) for an order's address. It depends
on Commerce Tax, in the Commerce package.

Use it to apply correct WA sales tax. It is an e-commerce/tax feature. If it looks up rates via an **external
rate service/API**, handle any credentials as secrets and use HTTPS; tax is applied server-side via Commerce
Tax (authoritative). It has no access-control role. Configure the WA tax settings.

---

- Calculate Washington State sales tax.
- Look up the destination rate.
- Handle WA destination sourcing.
- Depend on Commerce Tax.
- Apply tax per order address.
- Serve US WA commerce.
- Handle any rate-API credentials as secrets.
- Use HTTPS.
- Apply tax server-side via Commerce Tax.
- Have no access-control role.
- Configure the WA tax settings.
- Handle WA tax.
- Calculate tax.
- Configure taxation.
- Apply sales tax.
- Handle the lookup.
- Compute tax.
- Configure Commerce tax.
- Set the tax.
- Provide WA tax.
