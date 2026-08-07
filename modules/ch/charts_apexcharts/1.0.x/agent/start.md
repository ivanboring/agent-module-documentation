<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# ApexCharts (charts_apexcharts) — agent index

**ApexCharts** as a rendering library for the **Charts** module. Version **1.0.3**.
Core `^10.3 || ^11 || ^12`. Depends on `charts:charts`.

**Licensing is a real reason to have it on the list:** Highcharts requires a commercial licence for
anything beyond personal or non-profit use, and plenty of Drupal sites are quietly non-compliant
because a developer picked the default. ApexCharts is **MIT**.

**Needs asset-packagist.** Requires `npm-asset/apexcharts`, which is not on packages.drupal.org —
without the repository, composer says *"could not be found in any version, there may be a typo"*,
which reads like a dead module. This was the failure that prompted adding asset-packagist to the
campaign environment (wave 87).

**Two planning points for any chart library:** charts render **client-side**, so plotted data is in
the page source whatever the chart shows — aggregate first if the rows are sensitive; and a chart is
an **image to a screen reader** unless a data table or text summary carries the same information.