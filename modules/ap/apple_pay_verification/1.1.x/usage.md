<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Apple Pay Verification provides a form to upload the Apple Pay verification file and serves it at the appropriate route.

---

Apple Pay Verification lets administrators upload Apple's merchant domain-verification file and serves
it at the required well-known path (`/.well-known/apple-developer-merchantid-domain-association[.txt]`) — the
file Apple fetches to verify your domain for Apple Pay. It provides its own permissions and an admin upload
form, in the Commerce package.

Use it to complete Apple Pay domain verification. Its serving is implemented safely: the controller serves
the **admin-uploaded managed file** at **fixed** well-known routes (there is no request parameter/path in the
route, so no path-traversal or arbitrary-file exposure), and the routes are public (`access content`) —
which is correct, because Apple must be able to fetch the verification file anonymously. Only administrators
(with the module's permission) can upload/replace the file. It has no other access-control role. Upload the
verification file from Apple.

---

- Serve the Apple Pay verification file.
- Use the required well-known path.
- Let admins upload the file.
- Provide its own permissions.
- Serve the admin-uploaded managed file.
- Use fixed routes (no path traversal).
- Serve the file publicly (Apple must fetch it).
- Restrict upload to admins.
- Have no other access-control role.
- Complete Apple Pay domain verification.
- Upload the verification file.
- Configure the file.
- Serve at .well-known.
- Handle domain verification.
- Verify the domain for Apple Pay.
- Upload from Apple.
- Serve verification.
- Handle Apple Pay setup.
- Configure verification.
- Serve the file.
