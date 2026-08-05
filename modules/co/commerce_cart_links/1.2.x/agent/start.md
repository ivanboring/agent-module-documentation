<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Commerce Cart Links (commerce_cart_links) — agent index

URLs that manipulate a customer's cart by query parameters — campaign emails, QR codes, partner
links — plus a **share-cart modal**. Depends on `commerce_cart`. Configure at
`/admin/commerce/config/orders/cart-links`. Version **1.2.0**. Core requirement `^9 || ^10 || ^11`.

Access on `/cart-links` is layered — `CartLinksController::checkAccess()` requires **all** of:
1. `validateQueryParams()` — `existing` must be one of `new`, `empty`, `delete`;
2. **`validateRefererUrl()`**;
3. the **`view commerce cart links`** permission.

Two consequences to design around:
- **The referer check is what stops third-party sites firing cart manipulations at your
  customers.** But a referer is frequently **absent** — email clients, QR scans, `noreferrer`
  links. Confirm the allowed-referer configuration covers the channels the campaign will actually
  use, or the links silently 403.
- **`existing=delete` discards the customer's current cart.** Decide deliberately whether campaign
  links should be able to do that.

Other permissions: `generate cart share links`, and `administer commerce_cart_links`
(`restrict access: true`).

**Checked and clear:** `getRedirectUrl()` passes the `destination` query parameter to
`Url::fromUserInput()` after forcing a leading `/`. Core blocks the open-redirect —
`//evil.example.com/x` resolves to `/x`, and `\\host` or an absolute URL throws
`InvalidArgumentException`. The exception is **uncaught**, so a malformed `destination` is a 500
rather than a redirect: a robustness bug, not a security one.
