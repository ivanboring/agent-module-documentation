<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Field Based Login (fbl) — agent index

Lets users **log in with alternative fields** (email/custom fields vs username). Config at `fbl.configuration`;
provides permissions. Depends on core `user`. Version **2.0.x** (dev). Core `^9||^10||^11`.

Sound: a login-form validate handler **resolves the identifier to the real username** (`setValue('name', …)`)
and **core's login authentication still verifies the password** (doesn't weaken the check; flood control
applies); neutral "unrecognized username or password" message. Ensure the login field is **unique**. No other
access role.
