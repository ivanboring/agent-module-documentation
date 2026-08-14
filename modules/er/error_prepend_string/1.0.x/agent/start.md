<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Error prepend string (error_prepend_string) — agent index

**Wraps response content with PHP's `error_prepend_string` / `error_append_string` ini values.**

- **Version:** 1.0.1 (dir 1.0.x)  •  **Core:** ^8 || ^9 || ^10 || ^11  •  **Package:** UI
- **Mechanism:** `ErrorPrependStringEventSubscriber` on `KernelEvents::RESPONSE` sets content to `prefix . content . suffix`, prefix/suffix from `ini_get('error_prepend_string'|'error_append_string')`.
- **No routes, permissions, config, or services** beyond the subscriber.
- **Security:** Wrapper strings originate from PHP ini (server config), not request input — no user-controlled injection. Non-security note: the guard `!$response->getStatusCode() == 500` (`ErrorPrependStringEventSubscriber.php:18`) is an operator-precedence bug that makes the condition effectively always true, so wrapping applies to nearly all responses regardless of status.
