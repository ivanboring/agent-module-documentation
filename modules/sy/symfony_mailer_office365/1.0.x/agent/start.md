<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Symfony Mailer Office 365 (symfony_mailer_office365) — agent index

Microsoft 365 **transport for Symfony Mailer**. Version **1.0.0-alpha5** — an alpha, for the
component carrying every password reset. Core requirement `^10 || ^11`.

**Why it exists:** Microsoft has been retiring **basic authentication** for SMTP, so a
username/password in a settings form no longer works on a modern tenancy. The replacement is
**OAuth 2.0** — a registered Azure application, a client secret or certificate, and delegated or
application permissions granted by a **tenant administrator**. That is a different setup
conversation from "SMTP host and port", and it usually involves someone outside the Drupal team.

**The base matters as much as the transport.** Drupal mail is moving toward **Symfony Mailer**;
the contrib `symfony_mailer` module is where that work lives. Adopting this means adopting that.

**Two credential facts:**
- treat the **client secret as an API key** — environment variable + **Key** entity, never in
  exported configuration;
- **Azure client secrets expire** (a maximum lifetime, set at creation). Put the expiry in a
  calendar: the failure mode is that **all site mail stops on a date nobody recorded**.

Organisations want this because the audit trail, retention policy, data-residency commitment and
anti-abuse controls already live in the tenancy — a site sending directly is outside all of them.
