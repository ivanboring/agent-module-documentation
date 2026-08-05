<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# LDAP SSO (ldap_sso) — agent index

Automatic login from an upstream authenticator (Kerberos/NTLM at the web server), resolved
against LDAP. Depends on `ldap_servers` and `ldap_authentication` (composer `drupal/ldap ^4.4`).
Core requirement `^10.3 || ^11`.

| Route | Path | Requirements |
|---|---|---|
| `ldap_sso.login_controller` | `/user/login/sso` | **`_custom_access`** (`LoginController::access`), `no_cache: TRUE` |

Both are correct: whether SSO applies is a configuration/request question rather than a
permission, and anything establishing a session must not be cached.

Key facts:
- **The trust boundary is the web server, not Drupal.** The server authenticates and passes the
  identity in a server variable; Drupal trusts it. Consequences to state in any review:
  - if a **proxy passes through a client-supplied header** that the module reads, authentication
    is spoofable — the server configuration is part of the security boundary;
  - confirm which variable is read and that it cannot be influenced by the client;
  - keep a non-SSO login path available for accounts that are not in the directory.
- Account provisioning and role mapping belong to `ldap_authentication` / `ldap_user`, not here.
- Distinguish from `drupalauth4ssp` (wave 57), where Drupal is the *identity provider* for
  SimpleSAMLphp; here Drupal is the *consumer* of an upstream authentication.
