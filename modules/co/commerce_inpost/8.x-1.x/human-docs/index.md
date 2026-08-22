# Commerce InPost — manual setup guide

**Commerce InPost** (`commerce_inpost`) adds **InPost** as a shipping provider
for Drupal Commerce. InPost is best known in Poland for its **parcel lockers**
(*Paczkomaty*) — self-service pickup points where a courier drops a parcel and
the customer collects it with a code. This module lets your store offer that
delivery option at checkout: shoppers pick InPost as their shipping method, and
where relevant choose the locker they want to collect from, while the module
handles rating the shipment through InPost.

It builds on Drupal Commerce's shipping framework, so it depends on **Commerce**
(`commerce`) and **Commerce Shipping** (`commerce_shipping`) — the same modules
that provide the rest of your store's delivery options. Once enabled, InPost
appears alongside your other shipping methods and is configured the same way.

Because delivery quotes and locker data come from InPost's own service, the
module talks to the **InPost API** over the network. That means two things worth
knowing up front: you will need **API credentials** from your InPost account
(keep them out of version control — see Installation), and customer address and
parcel details are sent to InPost as part of getting a rate and booking a
shipment. This external data exchange is inherent to any carrier integration.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install with Composer, enable the
   module, and confirm the Commerce Shipping dependency.
2. [Configuration](configuration/index.md) — add the InPost shipping method,
   enter your API credentials, and choose test versus live.

## Where it lives in the admin menu

InPost is a **shipping method**, not a payment gateway. After you enable the
module, add and configure it under **Administration → Commerce → Configuration →
Shipping methods** (`/admin/commerce/config/shipping-methods`). From there you
create a new shipping method, select **InPost** as its plugin, and fill in the
credentials and options described in [Configuration](configuration/index.md).
