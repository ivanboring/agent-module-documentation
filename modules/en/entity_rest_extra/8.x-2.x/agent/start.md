<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Entity REST Extra — agent index

Adds **REST resources exposing entity configuration** (bundles, a bundle's fields, view modes) — content-model
discovery over REST. Depends on core `serialization`, `restui`. Version **8.x-2.4**. Core `^8.8||^9||^10||^11`.

Decoupled/web-services — exposes **content-model metadata** (gated by REST permissions): **grant carefully**
(reveals internal structure — recon surface). No access role of its own beyond REST permissions.
