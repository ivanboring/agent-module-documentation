# Commerce BTCPay — manual setup guide

**Commerce BTCPay** (`commerce_btcpay`) is a Drupal Commerce payment gateway for
**BTCPay Server**, the self‑hosted, open‑source cryptocurrency payment processor.
It lets your store accept **Bitcoin and other cryptocurrencies** (including
Lightning Network payments and altcoins your BTCPay Server supports) with no
third‑party intermediary, through an off‑site redirect flow. It depends on
Commerce Checkout and Commerce Payment (`commerce_checkout`,
`commerce_payment`).

Payment confirmation is handled correctly. On both the return leg and the
notification (`onNotify`), the module **re‑fetches the current invoice status
directly from your BTCPay Server** (`getInvoice()`) and records the payment based
on that verified status — the code explicitly notes it does not trust the return
URL. The notification route is public (`_access: TRUE`, standard for a Commerce
IPN), but it is safe precisely because the module always re‑checks the
authoritative status with BTCPay rather than believing the incoming request. That
means a forged return or notification cannot mark an order paid.

Version 3.x uses BTCPay Server's **Greenfield API** and is a breaking change from
1.x/2.x — uninstall older versions before installing 3.x. Pairing is smooth: you
enter your BTCPay Server URL and click **Generate API Key**, which redirects you to
BTCPay to authorize the app, then stores the store id, API key, and webhook back
in Drupal. Keep the API key secret and run everything over HTTPS. This release is
marked alpha (reported stable by the maintainers), so validate it for your
version.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install with Composer and enable the
   module and its Commerce dependencies.
2. [Configuration](configuration/index.md) — add the gateway, pair with your
   BTCPay Server, and store the API key.

## Where it lives in the admin menu

Commerce BTCPay adds no page of its own. You configure it as a gateway under
**Administration → Commerce → Configuration → Payment gateways**
(`/admin/commerce/config/payment-gateways`) — see
[Configuration](configuration/index.md).
