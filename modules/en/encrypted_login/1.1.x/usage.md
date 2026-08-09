<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Encrypted Login securely encrypts and decrypts login credentials using AES encryption.

---

Encrypted Login **encrypts login credentials on the client** before they are submitted — it exposes an
endpoint that returns an **RSA public key** (`EncryptedLoginController::getPublicKey()`), the browser encrypts
the credentials with it (AES/RSA), and the server decrypts them with the private key. It depends on core User,
in the Security package.

Use it only with a clear understanding of the trade-offs. **Important security caveat: client-side credential
encryption is not a substitute for HTTPS/TLS, and adds limited real protection.** Over HTTPS, TLS **already**
encrypts credentials in transit, so encrypting again in JavaScript does not meaningfully protect against a
network attacker — and it can create a **false sense of security** (never treat it as a reason to serve login
over plain HTTP; always keep TLS enforced). It also introduces custom crypto around authentication and a
server-side **private key** that must be protected (key storage/rotation matter). If you adopt it, keep HTTPS
mandatory, protect the private key as a secret, and don't rely on it as your primary transport security. It
does not change who can log in. Configure the keys and enable on the login form.

---

- Encrypt credentials client-side before submit.
- Serve an RSA public key for the browser.
- Decrypt with a server-side private key.
- Depend on core User.
- KNOW it is NOT a substitute for HTTPS/TLS.
- Understand TLS already encrypts credentials in transit.
- Avoid a false sense of security.
- NEVER use it to justify serving login over HTTP.
- Keep HTTPS mandatory.
- Protect the private key as a secret.
- Not change who can log in.
- Configure the keys.
- Handle encrypted login.
- Encrypt credentials.
- Configure the login form.
- Manage the keys.
- Handle the crypto.
- Enforce TLS still.
- Secure the private key.
- Provide credential encryption.
