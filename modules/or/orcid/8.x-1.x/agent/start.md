<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# ORCID — agent index

**ORCID OAuth2 login / account-linking.** Provides permissions. Version **8.x-1.1**. Core `^8||^9||^10||^11`.

**SECURITY — danger 3, do not deploy unpatched.** `OauthController::redirectPage()` (`/orcid/oauth`,
`_access: TRUE`) validates **no OAuth `state`** → login-CSRF and, for a logged-in victim, **forced
account-linking → takeover**. Also: `serialize()`s access/refresh **tokens + user data** into the page on a name
collision, creates accounts with **empty email**, stores **tokens plaintext**, uses an `http://` ORCID endpoint.
Fix: add/verify `state`, remove the serialize dump, encrypt tokens, require email, HTTPS. Recorded as a danger-3
finding.
