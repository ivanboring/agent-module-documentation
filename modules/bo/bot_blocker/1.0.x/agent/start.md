<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Bot Blocker (bot_blocker) — agent index

**Blocks HTTP requests from scraping bots and dangerously outdated browsers, matching on the User-Agent header, before real page work.**

- **Version:** 1.0.x (1.0.1)
- **Core:** `^10 || ^11`
- **Dependencies:** none
- **Configure:** `bot_blocker.settings_form` → `/admin/config/system/bot-blocker`

Key surfaces:
- Event subscriber `bot_blocker.subscriber` (`BotBlockerEventSubscriber::onKernelRequest`, `KernelEvents::REQUEST` priority 101) — banned-substring + minimum-browser-version gate, returns 403 or 410.
- Permissions: `administer bot blocker`, `bypass bot blocker`.
- Config `bot_blocker.settings` (banned substrings, per-family min versions, response code, blocked HTML).
- Optional block/allow counters recorded only under memcache/redis.

**Security:** No findings. The single route is admin-permission-gated; no anonymous mutating endpoints. Detection is entirely from static admin config — no outbound HTTP, so no TLS concern. No SQL, no `unserialize`, no weak tokens, no secrets. The blocked HTML is admin-supplied (trusted) config rendered verbatim. Note: UA-based filtering is trivially bypassed by spoofed/absent User-Agents (inherent limitation, not a vuln).
