<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# XHProf (xhprof) — agent index

Code profiling via **XHProf** integration (function-level timing/calls). Version **2.0.0-beta1**.
Needs the XHProf PHP extension.

**Caution:** profiling adds overhead and profiles reveal internal code paths/data — dev/staging or
targeted investigation only, **not left running in production**; restrict the UI/data to developers.