<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# External Script SRI (external_script_sri) — agent index

Attaches **`integrity`** and **`crossorigin`** attributes to externally hosted scripts. Form at
`/admin/config/system/sri-configuration`; `administer external_script_sri` is
`restrict access: true`. Version **1.0.1**. Core requirement `^9.5 || ^10 || ^11`.

**Why it matters:** every externally loaded script is a standing grant of execution rights to
whoever controls that URL. CDN compromise, host hijack, DNS takeover, or simply a maintainer
republishing under the same path — the browser runs code the site never reviewed. **SRI** makes the
browser compare a hash before executing and refuse on mismatch.

Commonly omitted, including by contrib that declares CDN libraries in its own `libraries.yml` —
e.g. `redoc_field_formatter` (wave 70) loads Redoc from jsDelivr with **no hash**.

**Two operational points that decide whether it helps or breaks the site:**
1. **`crossorigin` is required for SRI to function.** The browser needs a CORS-mode fetch to
   inspect the response, and the host must send permissive CORS headers — otherwise the script
   **fails to load**, not merely fails to be verified.
2. **A hash pins one exact file.** When upstream publishes an update the script stops loading until
   the hash is updated. Pin **versioned URLs**, and treat a hash update as a review step — that is
   the point, not a nuisance.

Hashes can be generated at `srihash.org` (linked from the form's own help text).
