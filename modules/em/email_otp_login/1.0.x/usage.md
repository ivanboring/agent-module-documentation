<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Email OTP Login enables OTP-based (passwordless) login for users via an emailed code.

---

Email OTP Login **provides passwordless login via an emailed one-time code** — a user requests a login code,
receives a 6-digit OTP by email, and enters it to log in. It depends on core User.

Do **not deploy this as-is**: it has a **critical account-takeover flaw** (recorded as a campaign security finding).
The request and verify endpoints (`/otp-email`, `/validate-otp/{email}`) are **public** (`access content` =
anonymous), the code is generated with a CSPRNG (`random_int`, good) but stored **raw in State with no expiry**, and
verification uses `hash_equals` (good) yet has **no rate-limiting/flood control, no attempt counter, and does not
invalidate the OTP after failed guesses** (it deletes it only on success). So an anonymous attacker who knows a
victim's email (often public) can trigger a code and then brute-force the **6-digit** value across its full 10^6
space with **unlimited attempts and unlimited time** until they are logged in **as the victim** — full account
takeover of any account (including admins) that uses this login. Until it is fixed to **flood-limit `/validate-otp`,
invalidate the OTP after a few failures, and add a short expiry**, keep this module disabled or restricted; it is
not safe for authentication. (Documented here so agents don't recommend it as a secure login method.)

---

- Provide passwordless email-OTP login.
- Email a 6-digit one-time code.
- Log the user in on a valid code.
- Depend on core User.
- Serve authentication.
- Offer OTP login.
- EXPOSE /otp-email + /validate-otp/{email} publicly (access content = anonymous).
- Store the OTP raw in State with NO expiry (CSPRNG generation, hash_equals compare - but that's not enough).
- Have NO rate-limiting/flood control, NO attempt limit, and NOT invalidate the OTP on failed guesses.
- ALLOW an anonymous attacker to brute-force the 6-digit OTP (10^6, unlimited attempts) → account takeover of any account.
- Not be safe for authentication until fixed (flood-limit /validate-otp + invalidate after N failures + short expiry).
- Keep it disabled/restricted until fixed.
- Handle OTP login.
- Send codes.
- Configure the login.
- Verify codes.
- Handle the OTP.
- Log users in.
- Not recommend it as secure.
- Provide (unsafe) email-OTP login.
