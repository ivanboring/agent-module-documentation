<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Decoupled Passkeys — agent index

Adds **passkey (WebAuthn) authentication for decoupled front-ends** via JSON-RPC. Depends on `jsonrpc`,
`public_key_credential_source`, `webauthn_framework`. Provides permissions. Version **1.0.0-alpha8**. Core
`^10.3||^11`.

Authentication — **security-critical**: WebAuthn assertion verification is done by the **WebAuthn Framework**
(web-auth library); verify **RP-ID/origin/user-verification** config, HTTPS, and gate the JSON-RPC endpoints.
Never trust a client 'authenticated' claim. Layers on core auth.
