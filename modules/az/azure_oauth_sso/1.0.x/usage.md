<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Azure OAuth Client SSO lets users sign in to Drupal with a Microsoft Entra ID (Azure AD) account, mapping directory fields and roles onto the Drupal user.

---

Any organisation on Microsoft 365 already has an identity provider, and the expectation is that Drupal joins it rather than keeping separate passwords — which is the same requirement `oidc` and `login_gov`, documented earlier in this campaign, answer for other providers. This module implements the authorization-code flow against `login.microsoftonline.com` directly rather than through a shared OpenID Connect client, with configuration screens for field mapping and role mapping. Version **1.0.9** on `^9 || ^10 || ^11`. **Do not deploy this release as an authentication mechanism without reading the security notes**, because the flow has a defect that authentication flows are specifically designed to prevent. The OAuth `state` parameter is emitted as the hard-coded literal `12345` and is **never read on the callback** — verified on a clean install, where the redirect to Microsoft carries the constant and `/oauth/login?code=<anything>` reaches the token exchange anonymously with no `state` supplied at all. `state` exists to bind the authorization request to the callback so that a callback the browser did not initiate is refused; without it the flow is open to login CSRF, in which a victim is signed in to the **attacker's** identity and then works inside the attacker's account. Two further points: the Drupal account is chosen by **matching the email address** from the Graph response, with no stable `oid`/`sub` binding and no tenant check, so the arrangement is only as safe as the Azure application being single-tenant; and the access and refresh tokens are stored in **user entity fields**, so anything exporting all user fields exports live credentials. Prefer the `openid_connect` ecosystem, which implements the flow properly.

---

- Sign in with a Microsoft 365 account.
- Add Entra ID login to a site.
- Map Azure AD fields to a profile.
- Map directory groups to Drupal roles.
- Remove separate passwords for staff.
- Support a corporate intranet's login.
- Authenticate against Azure Active Directory.
- Sync a user's photograph from Microsoft.
- Support an organisation on Microsoft 365.
- Provide single sign-on for editors.
- Reduce password-reset support load.
- Map job title from the directory.
- Support a university's Microsoft tenancy.
- Authenticate contractors through Entra.
- Centralise account deprovisioning.
- Add SSO to a members' area.
- Map department to a Drupal field.
- Support a Microsoft-centred organisation.
