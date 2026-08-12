<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Integrate with the Phaxio online fax service.

---

Phaxio integrates Drupal with Phaxio — an online fax API — so a site can send faxes and receive fax-status callbacks, letting other modules react to fax events via `hook_phaxio_status`.

**Security warning (as shipped, 1.2.3):** the status callback `/phaxio/status` is `_access: 'TRUE'` and `receiveStatus()` fires `hook_phaxio_status` for any request carrying `fax` + `event_type` params **without verifying the Phaxio `X-Phaxio-Signature` HMAC** — so anonymous callers can forge/replay fax-status events. The base module only fires the hook (mutates nothing), but implementers inherit an unverified trigger. **Verify the Phaxio signature before acting.** Store the Phaxio API secret securely (env-backed). Supports Drupal 9, 10, and 11.

---

- Integrate the Phaxio fax API.
- Send faxes.
- Receive fax-status callbacks.
- Fire `hook_phaxio_status`.
- WARNING: callback verifies no signature.
- Allow forged/replayed fax events.
- Require verifying `X-Phaxio-Signature`.
- Store the API secret securely.
- Depend on Drupal core only.
- Support Drupal 9, 10, and 11.
- Handle fax status.
- Configure Phaxio.
- Support Drupal.
- Support Drupal.
- Support Drupal.
