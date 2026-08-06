<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Acquia VWO (acquia_vwo) — agent index

VWO A/B testing with **enhanced data capture** — passes Drupal content metadata (content type,
taxonomy) into VWO so experiments segment on what the CMS knows.
Configure at `/admin/config/system/acquia_vwo` (+ `/visibility`, `/vwoid`).
Version **1.0.2**. Core `^9.2 || ^10 || ^11`. Depends on `node`, `taxonomy`.

Permission: `administer acquia vwo` — **not** `restrict access`, worth noting for a setting that
controls a script which can alter what visitors see.

**Two deployment points, neither the module's to solve:** the VWO script can **rewrite content
client-side before the visitor sees it** (that is the feature — and it puts the vendor account in
your trust boundary); and it sets bucketing cookies, so EU-facing sites need consent gating
(`usercentrics`, `consent_mode`).