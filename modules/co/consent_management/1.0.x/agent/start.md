<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Consent Management — agent index

**Creates data policies and manages user consent** (record + version, re-prompt on change; GDPR-style). Depends
on core `block`, `path_alias`. Provides permissions. Version **1.0.1**. Core `^9||^10||^11`.

Privacy/compliance — stores **consent records tied to users** (personal data): retain/expose per privacy policy,
protect and audit the record. Admin functions gated by permission.
