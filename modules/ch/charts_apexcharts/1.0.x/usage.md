<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
ApexCharts adds ApexCharts as a rendering library for the Charts module.

---

The Charts module is an abstraction: a View or a render array describes what to plot, and a library plugin decides how it looks. That is what makes the choice of library a configuration decision rather than a rewrite, and this adds ApexCharts to the options alongside Highcharts, Chart.js and the rest.

ApexCharts is worth having on that list for a specific reason — its licensing. Highcharts, the most capable of the traditional options, requires a commercial licence for anything other than personal or non-profit use, and a surprising number of Drupal sites are quietly non-compliant because a developer picked the default. ApexCharts is MIT.

**Installation needs asset-packagist.** ApexCharts is distributed through npm, so the module requires `npm-asset/apexcharts`, which does not exist on packages.drupal.org. Without that repository configured, composer reports *"could not be found in any version, there may be a typo in the package name"* — which reads like a dead module and is not one. Adding `https://asset-packagist.org` to `repositories` resolves it; this was the failure that prompted adding it to the campaign environment in wave 87.

Two things worth planning with any charting library. Charts are **client-side rendering of data**, so whatever is plotted is in the page source regardless of what the chart displays — aggregate before sending if the underlying rows are sensitive. And a chart is an image to a screen reader unless something else conveys the same information; a data table alongside, or a text summary, is what makes it accessible.

---

- Render a chart with ApexCharts.
- Choose a charting library by configuration.
- Avoid Highcharts licensing obligations.
- Use an MIT-licensed chart library.
- Plot data from a View.
- Add asset-packagist to composer.
- Diagnose a missing npm-asset package.
- Recognise a repository gap rather than a dead module.
- Aggregate data before sending it to the client.
- Avoid exposing raw rows in page source.
- Provide a data table alongside a chart.
- Give a chart an accessible alternative.
- Switch libraries without changing the View.
- Compare chart libraries for a project.
- Document the module's behaviour for the team.
- Review it during a site audit.
- Verify its assumptions after an upgrade.
