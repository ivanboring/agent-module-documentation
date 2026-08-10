<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Another Entity Iterator — agent index

A developer utility for **iterating over entities efficiently in batches** (bulk updates/reports/migrations
without exhausting memory). Requires PHP 8.2. Version **1.0.0-alpha7**. Core `>=10.2||^11`.

Developer/API — loads entities under the caller's control (**apply access checks in your code** if output is
user-facing); no content/access role of its own.
