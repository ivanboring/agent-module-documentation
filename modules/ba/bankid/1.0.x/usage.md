<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
BankID provides BankID.com integration for Drupal.

---

BankID provides **BankID.com (Swedish national e-ID) authentication** for Drupal — letting users log in (or
sign) with BankID: the site starts an auth order, the user approves in the BankID app, and the server collects
the verified identity. It depends on the Key and ExternalAuth modules.

Use it to offer BankID login. It is an **authentication** feature and it uses the right building blocks: it maps
the BankID identity to a Drupal user via the **ExternalAuth** service (the trusted external-login mechanism), and
stores the BankID API **credentials via the Key module** (secret). The flow: `/api/bankid/authenticate` starts an
order (server-side, via BankID's mTLS API), and `/api/bankid/collect/{orderRef}` polls BankID's `collect` API for
the verified result (`completionData.user.personalNumber`), which is hashed into the ExternalAuth authname to log
in/register. Security essentials to verify for your deployment: the BankID **client certificate/credentials** must
be secured (they authenticate your merchant to BankID), the auth **order must be bound to the initiating session**
so one user can't complete another's `orderRef`, and serve everything over HTTPS. It layers on core authentication.
Configure the BankID certificate/credentials (via Key).

---

- Authenticate with BankID (Swedish e-ID).
- Start an auth order + collect the result.
- Verify the user in the BankID app.
- Depend on Key and ExternalAuth.
- Map the identity via ExternalAuth (trusted).
- Store BankID credentials via the Key module.
- Poll BankID's collect API server-side for completionData.
- SECURE the BankID client certificate/credentials.
- Ensure the order is bound to the initiating session (no orderRef hijack).
- Serve everything over HTTPS.
- Layer on core authentication.
- Configure the certificate/credentials via Key.
- Handle BankID login.
- Authenticate users.
- Configure the credentials.
- Log users in.
- Handle the integration.
- Verify identities.
- Collect results.
- Provide BankID authentication.
