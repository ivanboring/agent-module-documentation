<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Entity View Redirect (entity_view_redirect) — agent index

Redirects an entity's **canonical view page to its edit form** (or another route). Version **1.0.0**.

Admin-configured target (not request-derived → not an open-redirect surface). For records managed
only through their form. Confirm it doesn't catch users who should see a view page.