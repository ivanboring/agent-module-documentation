# ePayco — manual setup guide

**ePayco** (`epayco`) integrates the Colombian/Latin American payment provider
[ePayco](https://epayco.com/) with Drupal. It is the continuation of the older
"Commerce ePayco" project, restructured so the base module can be used **with or
without Drupal Commerce**: the base module provides a reusable ePayco service and
free payment buttons (handy for donation pages), while a Commerce gateway ships as
a submodule you enable only when Commerce is present.

You can store several sets of ePayco settings as **configuration entities** and use
them where you need — for example a default set for Commerce gateways that can be
overridden per store, which lets individual sellers use their own ePayco accounts.
Payments are typically handled off‑site (redirect) or "on‑page" through an iframe.

The important thing to know about its security posture is reassuring:
**payment confirmation is server‑authoritative.** The Commerce gateway does *not*
mark an order paid based on whatever the customer's browser sends back on return
from ePayco. Instead it **fetches the transaction status directly from ePayco's
API** and only completes the payment when ePayco's own response says the transaction
succeeded — and the outbound checkout request is signed. A forged or replayed
"return" from a customer therefore cannot complete an order. (See the note in
[Configuration](configuration/index.md) for how to keep it that way.)

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install the module with Composer, choose
   the submodules you need, and enable them.
2. [Configuration](configuration/index.md) — creating ePayco settings entities,
   storing the API keys safely, and the test‑vs‑live / confirmation notes.

## Where it lives in the admin menu

ePayco is administered from **Configuration**, where you create and manage its
settings **configuration entities** (each holding a set of ePayco account
credentials and options). When the **Commerce ePayco** submodule is enabled, you
also wire ePayco up as a payment gateway under **Commerce → Configuration →
Payment gateways**. The module provides its own permissions, granted at **People →
Permissions**.
