<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# AB Age Gate — agent index

An **age-gate splash** asking visitors to confirm their age (age-restricted products). Depends on
`csv_serialization`, `views_data_export`, `rest`, `serialization`. Version **2.0.395**. Core `^10||^11`.

**Cookie/client-side compliance measure, NOT access control** — bypassable by design; don't rely on it to
protect content/files (use real access control). Compliance/UX only.
