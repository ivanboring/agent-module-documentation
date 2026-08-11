<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# CAS User Ban — agent index

**Prevents the creation of users based on their CAS username** (deny-list on top of CAS SSO). Depends on `cas`.
Version **1.0.0**. Core `^10||^11`.

Access/authentication-control — stops auto-provisioning for denied CAS usernames (gate management to trusted admins,
keep the list accurate); no broader access role.
