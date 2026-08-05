<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
LDAP SSO logs users in automatically from an upstream authentication mechanism — typically Kerberos or NTLM handled by the web server — rather than presenting a login form.

---

On a corporate intranet the browser has usually already authenticated the user at the network level, and asking them to type a username and password into Drupal is both redundant and a source of a second credential to manage. The standard arrangement is that the web server performs the authentication and passes the resulting identity to the application in a server variable; this module takes that identity, resolves it against the configured LDAP directory through `ldap_servers` and `ldap_authentication`, and establishes a Drupal session. A login route at `/user/login/sso` is gated by a **`_custom_access`** callback (`LoginController::access`) rather than a flat permission — correct, since whether SSO applies depends on configuration and on the request rather than on a permission — with `no_cache: TRUE`, also correct for anything establishing a session. Composer requires `ldap ^4.4` and core is `^10.3 || ^11`. The security property to be explicit about is where trust sits: **the web server is the authenticator**, and Drupal trusts the variable it is handed. If that variable can be set by a client — a misconfigured proxy passing through a client-supplied header, for instance — then authentication is spoofable, so the server configuration is as much part of the security boundary as the module is.

---

- Log intranet users in automatically.
- Use Kerberos authentication with Drupal.
- Avoid a second password for staff.
- Integrate with Active Directory.
- Remove the login form for domain users.
- Resolve an SSO identity against LDAP.
- Support a corporate desktop environment.
- Reduce password-reset support.
- Meet a policy requiring domain authentication.
- Provision Drupal accounts from LDAP.
- Keep account lifecycle in the directory.
- Support a mixed SSO and local login site.
- Authenticate an intranet's users seamlessly.
- Map LDAP groups to Drupal roles.
- Reduce credential handling in Drupal.
- Support a university or agency network.
- Integrate with an existing LDAP estate.
- Provide SSO without SAML.
