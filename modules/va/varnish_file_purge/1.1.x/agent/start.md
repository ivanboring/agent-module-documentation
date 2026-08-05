<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Varnish File Purge (varnish_file_purge) — agent index

Invalidates cached **files** in Varnish when a file is replaced **at an unchanged URL**. Part of the
**Purge** family, so it uses the `purge` framework's queue and processors rather than issuing
requests directly. Version **1.1.4**. Core requirement `^10 || ^11`. Declares `php: 8.1`.

**The gap:** Drupal's invalidation works on **cache tags**, and files sit outside that model. An
editor replaces a PDF keeping the same filename — which is what "replace this file" means to
everyone who is not a developer — the URL is identical, and Varnish serves the old bytes until the
object expires. Hard to diagnose from the Drupal side, because Drupal **did** invalidate everything
it knows about.

**Two things worth attaching:**
1. **Establish that the site actually keeps URLs stable.** Drupal usually avoids this by changing
   the URL — image style derivatives carry an `itok`, and many file fields rename on replacement.
   If URLs change, this solves a problem the site does not have.
2. **The same issue exists one layer out.** A CDN in front of Varnish caches the same object under
   the same URL — purging Varnish alone leaves the stale copy at the edge. A complete solution names
   **every cache between the file and the reader**.
