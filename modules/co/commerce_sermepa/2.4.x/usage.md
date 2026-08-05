<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Commerce Sermepa integrates Drupal Commerce with **Redsýs** (formerly Sermepa), the payment platform used by most Spanish banks — for a Spanish shop it is usually the payment gateway, not one option among many.

---

The module is a Commerce payment gateway plugin: `src/Plugin` holds the gateway and `src/PluginForm` the payment forms, with `commerceredsys/sermepa ^1.0.9` implementing the protocol itself — request signing, response verification and the parameter encoding Redsýs requires. It also ships a `ludwig.json`, so the library can be installed without Composer on hosts that need that. There is no routing file of its own: the gateway's endpoints, including the asynchronous notification callback the bank posts to, come from Commerce's own payment routing, which is the correct arrangement because Commerce already defines and protects those paths. That callback is where the security of any redirect-based gateway lives — the bank's notification must be authenticated by its signature, since the URL is necessarily reachable without a session, and Redsýs's HMAC signing is what the underlying library implements. Two practical notes: the merchant key is a **secret** that belongs in an environment variable rather than exported configuration, per this repo's convention; and Redsýs distinguishes test and production environments by endpoint and key, so a misconfigured environment fails in ways that look like a signature error. Composer accepts Commerce `^2.0 || ^3.0`; the release carries the legacy `8.x-2.4` string.

---

- Take card payments through a Spanish bank.
- Integrate Redsýs with Drupal Commerce.
- Support a Spanish shop's standard gateway.
- Verify payment notifications by signature.
- Handle the redirect-and-return payment flow.
- Configure test and production environments.
- Accept payments in euros through a local acquirer.
- Install the protocol library without Composer.
- Support Commerce 2 or Commerce 3.
- Reconcile orders with bank notifications.
- Handle asynchronous payment confirmation.
- Meet a Spanish acquirer's integration requirement.
- Add a familiar checkout for Spanish customers.
- Keep merchant credentials out of code.
- Support refunds through the gateway.
- Test the flow against the Redsýs sandbox.
- Comply with a bank's mandated platform.
- Log payment responses for reconciliation.
