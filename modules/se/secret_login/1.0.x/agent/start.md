<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Secret Login — agent index

**Log in as a configured user by visiting a secret URL**. Version **1.0.2**. Core `^9||^10||^11||^12`.

**SECURITY (1.0.2):** login routes are `_permission: 'access content'` (anonymous). `/secret-login/access/{custom_path}` logs you in as the configured user with NO token/expiry, reusably (only a guessable path); `/secret-login/generate/{custom_path}` (anonymous) mints valid tokens. **Unauthenticated account takeover** if a secret URL targets a privileged account — verified live as user 1. Require the CSPRNG token + high-entropy path + permission-gate generation.