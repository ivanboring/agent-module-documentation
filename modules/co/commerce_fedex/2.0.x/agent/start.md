<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Commerce FedEx (commerce_fedex) — agent index

Live **FedEx** rating for Drupal Commerce Shipping. Depends on `commerce_shipping ~2 || ^3` and
Commerce `^2.32 || ^3`; library `whatarmy/fedex-rest`. Core requirement `^10 || ^11`.
**Release is 2.0.0-alpha2 — alpha.**

| Submodule | For |
|---|---|
| `commerce_fedex_dangerous` | hazardous-materials shipments |
| `commerce_fedex_dry_ice` | dry-ice shipments |

Both cover declarations that are **legal obligations**, not configuration options.

Key facts:
- **`ext-soap` is required** and is not enabled on every host — check `php -m | grep soap` before
  proposing it.
- **Rating happens in the checkout path.** An external call on every cart change means:
  - cache rate responses where possible;
  - configure a **fallback rate** — a checkout that fails because FedEx is slow is worse than one
    showing an estimate;
  - expect rating latency to be visible to customers.
- `src/Event/` is where real deployments live: rate filtering, surcharges and packaging decisions
  are always site-specific.
- **FedEx credentials are live secrets** — environment variable via `ddev dotenv set`, surfaced
  through a Key entity, never in exported configuration.
- `FedExAddressResolver` handles origin/destination resolution — the place to look when rates come
  back for the wrong origin on a multi-warehouse site.
