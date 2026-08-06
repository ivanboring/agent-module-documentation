<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# New Relic Transactions (newrelic_transactions) — agent index

Renames New Relic transactions by **route + entity bundle + highest-weight role**, instead of the
PHP entry point. Configure at `/admin/config/…/newrelic_transactions`. Version **1.0.5**.
Core requirement `^8.8 || ^9 || ^10 || ^11`.

**The problem it fixes:** New Relic sees **`index.php` for every request**, so a Drupal site's whole
traffic collapses into one bucket and the dashboard reports a 400 ms average — **true and useless**.

**Why those three dimensions:**
- **route** separates pages from each other;
- **bundle** separates node pages by content type — where real differences live, because one type
  has forty fields and another has three;
- **highest-weight role** separates the **anonymous request served from cache** from the **editor's
  request that rebuilds everything** — the single most common reason an average misleads.

**Two things worth attaching:**
1. **Cardinality is the constraint.** An APM charges and aggregates by **distinct transaction
   name** — a scheme including an **entity id** produces a name per node and buries the signal.
   Route + bundle + role is a deliberate choice of three **low-cardinality** dimensions.
2. **Role in a transaction name is a small disclosure** to whoever reads the APM: which roles exist
   and how traffic distributes. Unremarkable for most sites; worth a moment where role names are
   themselves sensitive.
