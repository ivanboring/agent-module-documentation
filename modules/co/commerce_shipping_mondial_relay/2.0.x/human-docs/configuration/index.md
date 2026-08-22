# Configuration

Setup has two parts: add a Mondial Relay shipping method with your widget
settings, and add the Mondial Relay pane to your checkout flow.

## Before you start: keep account credentials as secrets

If your Mondial Relay widget settings include account credentials (such as a
merchant code / private key), keep them out of committed configuration. Hold the
value in an environment variable and, where the module supports it, a **Key**
entity; otherwise override the config from `settings.php`:

```bash
ddev dotenv set .ddev/.env --mondial-relay-key=<value>
ddev restart
```

## 1. Add the Mondial Relay shipping method

1. Go to **Commerce → Configuration → Shipping methods**
   (`/admin/commerce/shipping-methods`) and click **Add shipping method**.
2. Choose the **Mondial Relay** plugin.
3. Fill in the **widget settings** as described in Mondial Relay's own
   documentation (your account/brand code and the widget options that control
   which pick-up points are shown), plus a customer-facing **rate label**.

Follow Mondial Relay's documentation for the exact widget parameters — the module
passes them through to the widget.

## 2. Add the checkout pane

Add the **Mondial Relay** pane to your checkout flow at **Commerce →
Configuration → Checkout flows**. It must sit alongside the **Shipping
information** pane (from `commerce_shipping`), which it relies on. At checkout the
customer uses the widget to pick a parcel shop, and the choice is carried into
their shipment.

## Save and test

Save and run a test checkout. Confirm the widget appears and a pick-up point can
be selected.

> **Known issue:** with multiple shipping methods, the widget may not refresh or
> show/hide correctly via AJAX. Check the project's issue queue for the current
> workaround if you offer several methods.

## Security notes

- Serve checkout over **HTTPS** and keep any account credentials in **secrets**,
  not in exported configuration.
- The customer's chosen pick-up point and address are shipping data — handle them
  with the same care as other order data.
