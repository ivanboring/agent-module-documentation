<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Flmngr File Manager (flmngr) — agent index

Integrates the **Flmngr** file-manager into CKEditor (browse/upload). Version **8.x-2.15**.

**Key fact (verified):** ships an **empty routing file, no controller** — **no Drupal-side file
endpoint**. The browse/upload backend is **external** (Flmngr hosted service or a separately-installed
server). So the file-manager security — upload access, allowed extensions, path handling, storage —
is the **external backend's** config, not Drupal's. Protect the Flmngr API credential; configure the
backend's restrictions; note hosted-service files reside there.