<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Forgot Password Block (forgot_password_block) — agent index

Exposes the **core password-reset request form as a placeable block**. Version **8.x-2.2**.

It's the core `/user/password` form in a block — inherits core's **anti-enumeration** (generic
message) and flood control. Security is core's; just don't pair it with anything that leaks account
existence.