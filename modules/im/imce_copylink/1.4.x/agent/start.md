<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# IMCE Copy Link (imce_copylink) — agent index

Adds a **copy-to-clipboard** button for the selected file's URL in the IMCE file browser.
Depends on `imce`. Core requirement `^8 || ^9 || ^10 || ^11`.

Key facts:
- Implemented as an **IMCE plugin** (`src/Plugin/`), plus `imce_copylink.js`, a stylesheet and an
  SVG icon. No routes, permissions or configuration.
- **Clipboard access requires a secure context.** On a site served over plain HTTP the copy can
  fail silently — which on a local environment without TLS looks like the module being broken when
  it is browser policy. Check the scheme before debugging.
- It copies the file's URL as IMCE knows it; on a **private** file scheme that URL is still
  access-controlled when followed, so copying a link does not grant access to it.
