<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Target Attributes Filter (target_attributes_filter) — agent index

Text filter adding a configurable **target attribute** (e.g. `_blank`) to links. Version **1.0.9**.

The target value is an **admin filter setting** (not author-controlled per link) → not an XSS vector.
**Tabnabbing note:** `target=_blank` needs `rel=noopener` — modern browsers apply it implicitly since
~2021; add it explicitly if supporting older browsers.