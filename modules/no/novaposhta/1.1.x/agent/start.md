<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# NovaPoshta API (project `basket_novaposhta`, module `novaposhta`) — agent index

Nova Poshta carrier integration for the **Basket** online-store module. PHP **8.1**, core
`^10 || ^11 || ^12`. Config at `/admin/config/development/novaposhta`
(`novaposhta.settings`, `configure` in info.yml).

> **Naming:** the drupal.org project is **`basket_novaposhta`**; the module machine name is
> **`novaposhta`**. `composer require drupal/basket_novaposhta`, then `drush en novaposhta`.

Key facts:
- Depends on **`basket`** (the store module) and core `views`. It is not a Drupal Commerce module.
- Source layout: `NovaPoshta.php` (API client), `NovaPoshtaEN.php` (English surface),
  `NovaPoshtaView.php` + `ViewsAlter.php` (carrier data in Views), `AdminPages.php` (admin
  screens), plus `API/`, `Controller/`, `Form/`, `Hook/`, `Plugin/` and **`Commands/`** (console
  commands, typically used to refresh city/warehouse reference data).
- Nova Poshta is **warehouse-based**: customers select a branch rather than entering a street
  address, so the integration's core job is city/warehouse lookup at checkout and storing the
  chosen branch on the order.
- Ships interface translations (`interface translation project: novaposhta`, server pattern
  `modules/basket/%project/translations/…`), so the UI is available in Ukrainian.

```bash
drush en novaposhta -y
drush cget novaposhta.settings
drush list | grep -i novaposhta      # the shipped console commands
```

Credentials: the carrier API key belongs in an environment variable rather than exported config —
check what `NovaPoshtaSettingsForm` stores before committing configuration.
