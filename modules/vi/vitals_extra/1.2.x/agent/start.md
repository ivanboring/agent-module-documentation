<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Vitals extras (vitals_extra) — agent index

Four extra checks for the **Vitals** health-check framework.
Version **1.2.0**. Core `^8.9 || ^9 || ^10 || ^11`. Depends on `vitals:vitals`.
No routes, permissions or config of its own.

Plugins: `Plugin/VitalsCheck/UpdateStatus`, `.../EnvironmentIndicator`, `.../DevModules`,
`.../Mail`; base class `VitalsExtraPlugin`.

`DevModules` is why the info file says `package: Security` — development modules left enabled in
production (Devel's arbitrary PHP execution, test-content generators, stage-file-proxy) are a
recurring, avoidable exposure that nothing else complains about.

Results go wherever the site already routes Vitals output; that is the point of using the
framework rather than another standalone report.