<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Page Not Found Redirect (pagenotfound_redirect) — agent index

**Configurable, friendly 404 page (title, message, link buttons) plus a broken-URL logger.**

- **Version:** 1.0.x (1.0.2)
- **Core:** ^10 || ^11
- **Configure:** `/admin/config/system/pagenotfound-redirect` (`administer site configuration`)
- **Public route:** `/friendly-404` (`access content`) — renders the custom page, returns HTTP 404. Set as system 404 page to activate.
- **Permission declared:** `administer pagenotfound redirect` (routing actually uses `administer site configuration`).
- **Logger:** `PageNotFoundLogger` → channel `page_not_found_redirect`.

**Security:** Not an open redirect — link destinations come only from module config, not the request. But `PageNotFoundController::display` concatenates config `title`/`message`/link `url`+`label` into raw `#markup` with no escaping → stored-XSS possible for a user with `administer site configuration`. See [configure/settings.md](configure/settings.md)
