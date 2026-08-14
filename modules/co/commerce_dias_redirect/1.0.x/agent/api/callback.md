<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# DIAS return callback

Route `commerce_dias_redirect.payment_callback` → `/commerce_dias_redirect/callback/{commerce_order}`
(`CallbackController::callback`, `_access: 'TRUE'`, `no_cache: TRUE`).

Flow:
1. Reads `orderId` from the request query string and `{commerce_order}` from the path.
2. Loads the `dias_payment` gateway config and calls `DiasApiService::getOrderStatus()` against the DIAS status API.
3. On HTTP 200 and a payload with `errorCode == 0 && orderStatus == 2 && actionCode == 0`, calls `createPayment()` which creates a `commerce_payment` in state `completed` with `amount = $order->getBalance()` and `remote_id = orderId`, then redirects to the checkout complete step.
4. Otherwise logs and redirects to the cart; a `hook_commerce_dias_redirect_failure_url_alter` alter hook can change the failure URL.

Authoritative-status check: the callback does re-query DIAS rather than trusting request-supplied status/amount. However `orderId` comes from the request query (client-controlled) and is not compared against the `orderId` stored in the order's `DiasGatewayData`, and neither the DIAS order↔commerce order binding nor the paid amount versus balance is verified — an agent auditing fulfillment integrity should treat these as gaps.
