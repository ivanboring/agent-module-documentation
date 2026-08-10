<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Affiliated provides common affiliate functionality.

---

Affiliated provides **common affiliate-marketing functionality** — tracking affiliates and their referrals
(and, via submodules, tying referrals to Commerce orders, user registrations or Webform submissions for
commission/attribution). It depends on core Views and User, provides its own permissions, in the Affiliated
package.

Use it to run an affiliate/referral program. It is a marketing/user-engagement feature. Security/data handling:
affiliate/referral records tie to **users and (with the commerce submodule) orders/commissions** — treat that
as personal/financial data, gate the affiliate-admin permissions to trusted operators, and validate referral
attribution (referral codes are user-visible, so don't trust them for security decisions). It has no
access-control role beyond its permissions. Configure the affiliate program.

---

- Track affiliates and referrals.
- Attribute referrals to orders/registrations.
- Support commissions.
- Depend on core Views and User.
- Provide its own permissions.
- Tie referrals via submodules.
- Treat affiliate/commission data as personal/financial.
- Gate affiliate-admin permissions.
- Not trust referral codes for security.
- Have no access-control role beyond permissions.
- Configure the program.
- Handle affiliates.
- Track referrals.
- Configure the affiliates.
- Attribute referrals.
- Handle the program.
- Manage affiliates.
- Track commissions.
- Restrict admin permissions.
- Provide affiliate functionality.
