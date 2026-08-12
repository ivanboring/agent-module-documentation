<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Webform 2Checkout — agent index

**2Checkout (Verifone) payment integration for Webform**. Version **1.0.0**. Core `^10||^11`.

**SECURITY (1.0.0):** `/wf-2checkout/return` (`_access: TRUE`) validates the buyer-return HMAC but **skips signature verification for 'status callbacks'** (triggered by any attacker-supplied `status`/`message_type` key) with **no INS HASH check** → anonymous can forge a 'complete' payment status on any submission. Verify the INS HASH. Depends on `webform`.