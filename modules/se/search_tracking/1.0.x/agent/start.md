<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Search Tracking (search_tracking) — agent index

**Logs visitor search keywords (+ client IP) via JS posting to an open API endpoint.**

- **Version:** 1.0.x
- **Core:** ^8 || ^9 || ^10
- **Configure:** `/admin/config/search/search-tracking/form-config` (role `administrator`)
- **Package:** Search

**Surface:** `POST /api/form-data` → `searchTrackingController::formData` (inserts search+IP+time); config form `SearchTrackingConfig`; `js/formData.js` captures the search field; `search_tracking` DB table.

**Security FINDING (anon write, D2):** `/api/form-data` requires only `_permission: access content` — effectively anonymous — with NO CSRF/auth/validation/rate-limiting. Any unauthenticated client can POST arbitrary `{name}` and flood the table (data pollution / DoS). Insert is parameterized (no SQLi); values capped 100 chars. Results-render method is not routed (commented out); would rely on Twig auto-escaping. See `search_tracking.routing.yml` + `src/Controller/searchTrackingController.php`.
