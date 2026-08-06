<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Varbase Social Single Sign-On wires the Social API's social-login providers into Varbase, so visitors can sign in with an existing account on Facebook, X, LinkedIn, Google or another supported network.

---

Social login is a conversion decision more than a technical one: on a site where registration is a barrier — a community, a customer portal, an event site — letting people reuse an identity they already have removes the friction of yet another password. The Social API family does the heavy lifting; this module is Varbase's integration of it, supplying the block and the configuration glue so a Varbase site gets the feature in the shape the distribution expects.

Three things are worth being deliberate about with any social login, and they are the same three every time.

**Account linking is the security-relevant part.** The question of whether a social identity matching an existing email address logs into that account decides whether an attacker who controls a provider account can take over a local one. Check what the Social API configuration does about email matching and verification before enabling this on a site with privileged local accounts.

**Provider outages become login outages** for anyone who has no local password. Keep a local password path available for staff accounts, at minimum.

**Every provider is a data-sharing relationship.** The visitor's identity, and typically their email address and profile data, passes through the network. That belongs in the site's privacy notice, and on an EU site in its lawful-basis analysis.

The core requirement is `~11.4.0` — a single Drupal minor, as with the rest of the Varbase family, so this travels with the distribution's release cycle.

---

- Let visitors sign in with an existing social account.
- Reduce friction on registration.
- Offer Google sign-in on a community site.
- Offer Facebook or LinkedIn login on a portal.
- Add a social login block to the login page.
- Reuse the Social API's provider ecosystem.
- Configure which providers are offered.
- Decide how social identities link to local accounts.
- Keep a local password path for staff accounts.
- Plan for a provider outage.
- Document social data sharing in a privacy notice.
- Track provider usage among registered users.
- Migrate a community from local-only accounts.
- Audit account-linking rules on an inherited site.
- Align with a distribution's release cycle.