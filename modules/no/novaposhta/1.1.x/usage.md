<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
NovaPoshta API integrates Nova Poshta — Ukraine's main parcel carrier — with the Basket online-store module: address and warehouse lookup, shipping options at checkout, and admin screens for managing the integration.

---

The project is `basket_novaposhta` but the module machine name is **`novaposhta`**, which matters when enabling it or writing config. It depends on the `basket` store module and core `views`, and exposes its settings at `/admin/config/development/novaposhta` (`novaposhta.settings`). The source is organised around a small set of service classes — `NovaPoshta` for the API client, `NovaPoshtaEN` for the English-language surface, `NovaPoshtaView` and `ViewsAlter` for injecting carrier data into Views listings, and `AdminPages` for the administrative screens — alongside `API`, `Controller`, `Form`, `Hook`, `Plugin` and `Commands` directories, so it ships console commands as well as UI. Because Nova Poshta's model is warehouse-based (customers pick a branch rather than giving a street address), the integration's main job is keeping the city/warehouse reference data available for selection at checkout and attaching the chosen warehouse to the order. Interface translations are shipped per the `interface translation server pattern` in its info file, reflecting a primarily Ukrainian-language audience.

---

- Offer Nova Poshta delivery in a Basket store.
- Let customers choose a Nova Poshta warehouse at checkout.
- Look up Ukrainian cities and branches from the carrier API.
- Attach the selected warehouse to an order.
- Show carrier data in Views listings of orders.
- Manage the integration from dedicated admin screens.
- Keep warehouse reference data current via console commands.
- Calculate delivery options for Ukrainian addresses.
- Support Ukrainian-language checkout with shipped translations.
- Reduce address entry errors by using branch selection.
- Provide tracking references for dispatched orders.
- Configure API credentials in one settings form.
- Integrate a Ukrainian store with its dominant carrier.
- Filter orders by delivery branch in an admin view.
- Automate carrier data refresh.
- Support both Ukrainian and English interfaces.
- Keep shipping logic in a dedicated module.
- Extend the Basket checkout with carrier-specific fields.
- Report on deliveries by region.
- Migrate a store to Nova Poshta without custom code.
