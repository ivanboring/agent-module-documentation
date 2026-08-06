<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Subresource Integrity UI (sri_ui) — agent index

Adds **`integrity`** and **`crossorigin`** attributes to asset libraries from a configuration screen
at `/admin/config/services/sri`, behind `administer site configuration`. Version **1.0.3**.
Core requirement `^8 || ^9 || ^10 || ^11`.

**Why configuration rather than code:** the declaration lives in a module's own `libraries.yml`,
which a site cannot change without **patching**. Modules frequently omit SRI —
`redoc_field_formatter` (wave 70) loads Redoc from jsDelivr with **no hash at all**.

**Two things decide whether SRI helps or breaks the page:**
1. **`crossorigin` is required for SRI to function.** The browser needs a **CORS-mode fetch** to
   inspect the response, and the host must send permissive CORS headers. Without both the script
   **fails to load** rather than failing to verify — the most common way an SRI rollout takes a site
   down.
2. **A hash pins one exact file.** When upstream publishes an update the script stops loading until
   the hash is updated — **the point, not a nuisance**, provided versioned URLs are pinned and a
   hash update is treated as a **review step**.

Compare **`external_script_sri`** (wave 72), which addresses the same problem from a per-script list
rather than per library.
