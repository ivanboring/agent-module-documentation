<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Authorise.Net CIM Manager creates and updates Authorize.Net CIM customer/payment profiles.

---

Authorise.Net CIM Manager integrates with Authorize.Net's Customer Information Manager (CIM) to create and update customer information profiles (stored customer + payment profiles at the gateway), enabling smoother repeat transactions. Merchant credentials (API login id, transaction key, environment) are configured under `administer site configuration`.

A CIM creation form is exposed at `/authnet-cim-manager/cim-creation-fom` gated by `access content`, so any role with content access can submit card details to create a profile — restrict content access appropriately, keep merchant credentials in secure config, and be mindful that card data passing through the server has PCI implications. Supports Drupal 9, 10, and 11.

---

- Integrate with Authorize.Net CIM.
- Create customer information profiles.
- Update payment profiles.
- Store profiles at the gateway.
- Enable smoother repeat transactions.
- Configure merchant credentials.
- Gate settings with `administer site configuration`.
- Expose a CIM creation form.
- Gate the form with `access content` (weak).
- Restrict content access appropriately.
- Keep merchant credentials in secure config.
- Mind PCI implications of server-side card data.
- Support Drupal 9, 10, and 11.
- Manage customer payment profiles.
- Call the Authorize.Net API.
- Configure the environment (sandbox/production).
- Handle payment-profile lifecycle.
- Avoid exposing the form broadly.
