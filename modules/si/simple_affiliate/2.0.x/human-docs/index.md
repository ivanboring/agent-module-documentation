# Simple Affiliate — manual setup guide

**Simple Affiliate** (`simple_affiliate`) is a very basic referral/affiliate system.
Every registered member gets a personal, unique affiliate link (shown in a block)
that they can share by email, ads, or on their own website. When someone clicks that
link, the module sets a tracking cookie in their browser carrying the sharing user's
id and sends them to your registration form. If that visitor registers within the
tracking window, the new account is recorded as a **referral** of the user who
shared the link.

Concretely: the affiliate link points at
`/simple_affiliate/set-tracking-cookie/{uid}`, which sets a `simple_affiliate` cookie
(six-month expiry) and redirects to the user-registration page. When a new user is
created, the cookie's value is stored into a user entity-reference field
(`field_simple_affiliate_referrals`), and a bundled **Simple Affiliate Dashboard**
View lists who referred whom. The module ships the field, its storage, and the View
as configuration; it has no dependencies beyond core and no submodules.

Two things to keep in mind. First, this is a lightweight tool for running a simple
referral program — not a full commerce/affiliate suite with commissions or payouts.
Second, be aware of a data-integrity caveat called out in the module's own docs: the
tracking route is effectively public and the referrer id from the URL and cookie is
stored **without validation**, so referral attribution can be spoofed by a
determined user. That is fine for informal, good-faith referral tracking, but do not
build anything that pays out real money on these numbers without adding your own
verification. Note also that this branch supports Drupal 8, 9, and 10.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token-cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install the module with Composer and
   enable it.

## How to use it

There is no dedicated settings form. After enabling the module:

1. Go to **Structure → Block layout** (`/admin/structure/block`) and place the
   **Simple Affiliate** block (which shows the logged-in user's personal affiliate
   link) into a region — for example on the user dashboard or account page. Members
   copy their link from there and share it.
2. When people click a shared link, they get the tracking cookie and land on
   registration; anyone who signs up while the cookie is present is attributed to the
   referring member.
3. View who referred whom on the **Simple Affiliate Dashboard** View, which you can
   place or link from the admin menu; adjust it in the Views UI if you want to change
   what it shows.
