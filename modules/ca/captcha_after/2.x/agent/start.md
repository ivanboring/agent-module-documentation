<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# CAPTCHA After (captcha_after) — agent index

Shows a **CAPTCHA only after X failed submit attempts**. Version **2.0.0**. Refines the CAPTCHA module.

**Trade-off:** the first N attempts have no CAPTCHA, so N automated tries get through per counter —
set the threshold **low**, and confirm attempt-counting is **server-side / not resettable** (keyed on
IP/session, not a client counter).