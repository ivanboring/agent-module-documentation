<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Access code allows users to log in with an access code as an alternative authentication method, with flood/rate-limiting on failed attempts.

---

Access code provides an alternative login method — users authenticate with an access code instead of
(or in addition to) a username/password. It depends on core User, provides permissions (`change own access
code`, `change any access code`), and — importantly — its login form uses Drupal's `UserFloodControl` so
failed access-code login attempts are rate-limited using core's `user.flood` configuration.

Use it where an access-code login flow is wanted (event access, simplified login). **The access code is a
login credential and must be treated like a password.** Its safety rests on: codes being sufficiently long/
random (a short/guessable code is brute-forceable), and rate-limiting on attempts (present — it uses core's
flood control per IP). When adopting: ensure codes are long and randomly generated (not sequential/
predictable), keep core's flood limits reasonable, serve login over HTTPS, and be aware that an access code
grants account access exactly as a password does — so treat/rotate them accordingly. It provides its own
permissions for who can change codes.

---

- Log in with an access code.
- Provide alternative authentication.
- Rate-limit failed attempts (flood control).
- Depend on core User.
- Use core's user.flood config.
- Treat the access code as a password.
- Ensure codes are long and random.
- Avoid short/guessable codes.
- Serve login over HTTPS.
- Gate changing codes by permission.
- Rotate access codes like passwords.
- Know a code grants account access.
- Provide change own/any access code permissions.
- Prevent brute-forcing via flood control.
- Use for event/simplified login.
- Generate codes securely.
- Handle codes as credentials.
- Configure flood limits reasonably.
- Restrict who changes codes.
- Log in via code.
