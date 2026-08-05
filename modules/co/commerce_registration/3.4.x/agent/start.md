<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Commerce Registration (commerce_registration) — agent index

Joins the **Registration** module to **Drupal Commerce** so event sign-up becomes a purchase.
Core requirement `^10.3 || ^11`.

Dependencies are heavy: `commerce`, `commerce_cart`, `commerce_checkout`, `commerce_order`,
`commerce_price`, `commerce_product`, plus `registration`. Composer pins
**`drupal/commerce ^3.0`** and `drupal/registration ^3.4.2` — a Commerce 2 site cannot use this
release.

| Submodule | Handles |
|---|---|
| `commerce_registration_waitlist` | what happens when capacity is reached |
| `commerce_registration_change_host` | moving a registration to a different event/session |

Key facts:
- Routes hang off the **product**: `/product/{commerce_product}/registrations` and
  `/product/{commerce_product}/registrations/settings`, gated by a custom access check
  **`_manage_commerce_registrations_access_check`** rather than a flat permission — correct, since
  the decision depends on the product as well as the user.
- The lifecycle to understand: adding to cart creates a registration; completing checkout confirms
  it. So an abandoned cart holds capacity until it expires — check Commerce's cart expiry settings
  when capacity appears to leak.
- `commerce_registration_change_host` is the answer to "can I switch sessions?" without a refund
  and rebooking; worth enabling proactively for anything with multiple sittings.
