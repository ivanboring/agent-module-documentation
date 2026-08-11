<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
A WebSocket-based real-time notifications system.

---

Driplet provides a WebSocket-based real-time notifications system — pushing live notifications to users over a WebSocket connection, authenticated with a per-user JWT that the site issues (`/…` JWT endpoint) so the WebSocket server can verify the connecting user.

The JWT signing secret is a configuration value (`driplet_jwt_secret`) — set it to a strong, secret value (env-backed) so tokens can't be forged. Requires a companion WebSocket server. Supports Drupal 10 and 11.

---

- Push real-time notifications.
- Use a WebSocket connection.
- Issue a per-user JWT.
- Let the WS server verify users.
- Sign JWTs with a config secret.
- Set a strong secret (env-backed).
- Require a WebSocket server.
- Support Drupal 10 and 11.
- Configure notifications.
- Aid engagement.
- Handle real-time updates.
- Deliver notifications
- Support Drupal.
- Support Drupal.
- Support Drupal.
