<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# CL Devel (cl_devel) — agent index

Development aids for **component developers** (SDC / the `cl_*` family).
Version **2.0.0**. Core `^10 || ^11`.

Addresses the component feedback-loop problem — a component is YAML plus schema plus Twig plus a
consumer, and when it does not appear the cause could be in any of them.

**Development module.** Same category as `ckeditor5_dev` and `ignition`: fine locally, and exactly
what `vitals_extra`'s `DevModules` check exists to find in production.

**Planning note:** core **SDC** absorbed much of what the `cl_*` family and UI Patterns were built
for. On a new project, settle which layer you are building on before adding tools around it.