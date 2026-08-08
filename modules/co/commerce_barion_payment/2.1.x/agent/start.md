<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Commerce Barion Payment — agent index

Drupal Commerce **payment gateway** for **Barion**. `onNotify` reads `paymentId` then **queries
Barion's authenticated API (`GetPaymentState`)** for the real status — forged notifications can't mark
paid (correct posture). Depends on `commerce`, `commerce_payment`. Version **2.1.1**. Core `^9||^10||^11`.

Store the Barion API/POS keys as secrets; confirm test vs live.
