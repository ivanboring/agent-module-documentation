<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# OTP for account creation (otp) — agent index

Email verification by **one-time code** instead of an activation link. Verification form at
`/user/register/otp` (**`_access: 'TRUE'`** — necessarily, the user is not yet authenticated);
settings at `/admin/config/people/otp` behind `administer site configuration`.
Version **8.x-1.1**. Core requirement `^8 || ^9 || ^10 || ^11`.

**Why a code beats a link:** an activation link is a **credential in an email** — consumable by a
mail scanner or link-preview bot (see `shy_one_time`, wave 72, which exists to patch exactly that)
— and it takes the user out of the browser, where a proportion never return.

**The route is open by necessity, so the whole design rests on what the form does with the code.
Check these four on the specific release before relying on it:**
1. **Code length and alphabet** — the search space.
2. **An attempt limit** — what makes that space matter. Six digits with unlimited guesses is a
   million tries against one account and nothing more.
3. **Expiry** — bounds the window.
4. **`hash_equals()`** rather than `==` for the comparison.

Also confirm **flood control on the send step**, or the form becomes a way to make your site email
arbitrary addresses.

Not to be confused with `one_time_password` (wave 71), which is TOTP/HOTP **two-factor login**.
This is **registration-time email verification**.
