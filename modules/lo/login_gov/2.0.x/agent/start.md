<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Login.gov OpenID Connect (login_gov) — agent index

Login.gov provider plugin for **`openid_connect (>=3.0)`**. Also requires
**`key_asymmetric (>=1.2.0)`**. Version **2.0.0**. Core requirement `^10 || ^11`.

**The `key_asymmetric` dependency is the tell that the integration is done properly.** Login.gov
requires **private-key JWT** client authentication, not a shared client secret — the site signs its
token requests with a private key whose public half is registered with Login.gov. Operationally
that means a **key pair to generate, register, protect and rotate**, and the private key belongs in
a **Key entity** backed by an environment variable or KMS, never in configuration.

**What Login.gov is:** the US government's public-facing SSO — one account, identity proofing and
MFA done once and reused across agencies. A federal site using it runs **no registration**, stores
**no passwords**, and inherits an assurance level it could not economically build.

**Three things to plan:**
1. **IAL and AAL levels** (identity-proofing and authentication assurance) are a **programme policy
   decision** with real consequences for who can complete registration — not the Drupal team's call.
2. **Account linking.** What happens when a Login.gov identity arrives whose email matches an
   existing local account is a **security** question, not a convenience one.
3. **Sandbox and production are separate registrations** — a working integration in one proves
   nothing about the other.
