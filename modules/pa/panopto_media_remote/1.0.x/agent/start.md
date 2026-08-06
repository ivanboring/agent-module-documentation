<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Panopto Media Remote (panopto_media_remote) — agent index

Adds **Panopto** as a provider for **`media_remote`**, so a lecture-capture recording is referenced
as a media entity **by URL**. Requires `media_remote`. Version **1.0.1**.
Core requirement `^8 || ^9 || ^10 || ^11`.

**Why `media_remote` is the right base:** it deliberately **stores a URL and renders an embed**
without pretending to own the asset — unlike a media source that downloads and manages a file. The
video is large, governed elsewhere, and copying it would duplicate **both the storage and the access
decision**.

**Three things follow from referencing rather than holding:**
1. **Access lives with Panopto** — the point, and the complication. A recording restricted to a
   course sits on a Drupal page that may be public, and **what a visitor sees is whatever Panopto
   decides**. The Drupal page must not imply access it cannot grant; a page whose only content is an
   unplayable embed is **a broken page** from the visitor's side.
2. **The embed is a third-party request** carrying a view to Panopto — usually acceptable for an
   institutional platform, and still belongs in the privacy notice.
3. **Captions are the accessibility requirement for recorded teaching, and they live in Panopto.**
   Whether a recording is captioned is answered **on the platform** — a site publishing links to
   uncaptioned lectures has an obligation it **cannot discharge from its own side**.
