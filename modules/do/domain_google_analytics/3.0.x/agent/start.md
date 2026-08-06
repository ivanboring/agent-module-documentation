<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Domain Google Analytics (domain_google_analytics) — agent index

Per-domain **Google Analytics** configuration for a **Domain**-module multi-site. Requires
`domain`. Version **3.0.2**. Core requirement `^9 || ^10 || ^11`.

**Two install notes:** the project is `domain_google_analytics` but the module it ships is
**`multidomain_google_analytics`** — `drush en domain_google_analytics` fails. And **`domain` is not
pulled in automatically**; enabling without it fails on the missing dependency.

**Why "several sites, one installation" collides here:** a single measurement id across brand sites
**mixes their traffic into one property**; a shared property with hostname filtering works only if
everyone reporting remembers the filter; and **a client site whose analytics belongs to the client
cannot share a property** with the agency's other clients at all.

**Two things worth attaching:**
1. **Per-domain tracking is a per-domain cache context.** A page cached for one domain must not be
   served to another **with the wrong measurement id embedded** — a general Domain hazard worth
   verifying here, because a wrong id **sends a site's traffic to somebody else's property**.
2. **Consent is per-domain too.** The domains may sit in **different jurisdictions with different
   requirements**, and a consent banner configured once at installation level is answering a
   question that has more than one right answer.
