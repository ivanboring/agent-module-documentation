<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Decoupled Passkeys adds passkeys support for decoupled front-ends.

---

Decoupled Passkeys **adds passkey (WebAuthn) authentication for decoupled front-ends** — exposing
registration/authentication ceremonies over JSON-RPC so a headless front-end can log users in with passkeys
(device biometrics/security keys). It depends on JSON-RPC, Public Key Credential Source and the WebAuthn
Framework, provides its own permissions.

Use it to offer passkey login on a decoupled site. It is an authentication feature and it is
**security-critical**: the actual WebAuthn assertion verification (challenge, origin/RP-ID, signature, user
presence) is performed by the **WebAuthn Framework** (the well-tested web-auth library) — so verify that the
**relying-party ID, origin and user-verification** are configured correctly for your domain (misconfigured
origin/RP-ID checks weaken the guarantee), serve everything over HTTPS, and ensure the JSON-RPC endpoints
require the correct permission. Never trust a client-asserted "authenticated" without the server-side ceremony.
It layers on core authentication. Configure the passkey settings.

---

- Add passkey (WebAuthn) auth for decoupled.
- Expose ceremonies over JSON-RPC.
- Log users in with passkeys.
- Depend on Public Key Credential Source + WebAuthn Framework.
- Provide its own permissions.
- Serve headless front-ends.
- Let the WebAuthn Framework verify the assertion.
- Configure RP-ID/origin/user-verification correctly.
- Serve everything over HTTPS.
- Gate the JSON-RPC endpoints by permission.
- Never trust a client 'authenticated' claim.
- Layer on core authentication.
- Handle passkey login.
- Authenticate users.
- Configure the passkeys.
- Register passkeys.
- Handle the integration.
- Enable passkeys.
- Verify configuration.
- Provide decoupled passkeys.
