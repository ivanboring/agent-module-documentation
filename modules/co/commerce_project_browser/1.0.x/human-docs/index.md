# Commerce Project Browser — manual setup guide

**Commerce Project Browser** (`commerce_project_browser`) lets you browse and install
**Commerce recipes** published on Packagist, from the pages where they are relevant.
It extends Drupal core's **Project Browser** by adding a source that discovers
Commerce integrations on Packagist by category — including ones not yet present in
your codebase — so that while a site builder is configuring a Commerce feature, the
relevant Commerce recipes are surfaced and can be installed in place.

In short, it turns "go find and add a Commerce add-on" into something you do in
context, without leaving the admin UI. It depends on the **Project Browser** module
(`project_browser`) and supports Drupal 10 and 11.

Because it installs code and recipes, treat it as an administrator-only tool. It
inherits Project Browser's install workflow and its access model, so restrict it to
trusted administrators — installing arbitrary packages is a high-privilege action.
Note also that this is an early (alpha) release and the project is not covered by
Drupal's security advisory policy, so use it deliberately and test on a non-production
copy first.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install with Composer and enable it
   alongside Project Browser.

There is **no dedicated settings form** — it plugs a new source into Project Browser,
which you use as normal, described below.

## Where it lives in the admin menu

The module adds no page of its own; it contributes a **source** to the core Project
Browser (**Extend → Browse**, `/admin/modules/browse`). Its Commerce recipes appear
there and, where integrated, alongside the Commerce feature pages they relate to.

## How to use it

1. Enable the module (see [Installation](installation/index.md)), which also enables
   Project Browser.
2. Open Project Browser under **Extend → Browse**. The Commerce source lets you find
   Commerce recipes by category.
3. As a trusted administrator, install a recipe in place through Project Browser's
   normal install workflow.
4. Keep this capability restricted to administrators you trust, since it installs
   code.
