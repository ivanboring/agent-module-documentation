<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Private Messenger — agent orientation

Admin-created per-user login messages shown via Drupal messenger on next login (NOT user-to-user chat).

- Version 1.3.x, core `^8||^9||^10`, dep text. Entity `private_messenger_message`, all routes gated by admin perm `access private messenger message overview` (AdminHtmlRouteProvider).
- `hook_user_login` shows + deletes the recipient's messages. Note: `t($adminMessage)` renders as safe markup (self-XSS, admin-only); `getParameters()` `unserialize()`s an admin-typed text field (object-injection, admin-gated).
- No cross-user read, no anon surface. Everything privilege-gated — nothing exploitable by a normal user.