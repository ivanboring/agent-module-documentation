# Commerce Google Analytics — manual setup guide

**Commerce Google Analytics** (`commerce_google_analytics`) sends your Drupal
Commerce order data to Google Analytics so you can see store performance —
purchases, add-to-cart, checkout and product views — in GA's e-commerce reports.
It is a contribution to Drupal Commerce that handles the plumbing between a
completed order and GA's e-commerce tracking.

Rather than push events itself, it builds on the **GA Push** module to dispatch
events to Google Analytics, and it integrates with **Rules** so you control
exactly *when* the analytics data is sent. That flexibility is useful if, for
example, you redirect customers to a custom "thank you" page instead of the
default checkout-complete page — you can trigger the send from the right place.

Because it sends order, product and user data to Google, treat it like any
analytics integration: obtain the appropriate consent, wire it into your
cookie-consent mechanism, and disclose the tracking as your jurisdiction requires.
It depends on Commerce Order and GA Push, and runs on Drupal 10 and 11.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install with Composer and enable the
   module and its GA Push dependency.

There is **no dedicated settings page** for this module. Configuration happens in
GA Push and in Rules, described in "How to use it" below.

## Where it lives in the admin menu

Commerce Google Analytics has no settings form of its own. The relevant
configuration lives in the modules it builds on:

- **GA Push** global settings at **Configuration → System → GA Push**
  (`/admin/config/system/ga-push`) — where your Google Analytics account and the
  dispatch method (for example the PHP-GA library) are set up.
- The **Rules** reaction that controls when commerce data is sent, under
  **Configuration → Workflow → Rules**.

## How to use it

1. First set up **Google Analytics** and **GA Push** for your site — configure
   your GA account in GA Push at **Configuration → System → GA Push**
   (`/admin/config/system/ga-push`). Configuring GA Push to work with the PHP-GA
   library (or UTMP-PHP) is recommended, as it sends transactions server-side and
   reduces the chance of a purchase not reaching GA.
2. With this module enabled, the commerce e-commerce events are wired to GA Push.
   Use the provided **Rules** reaction (under **Configuration → Workflow →
   Rules**) to decide when the analytics code is sent — the default fires on order
   completion, but you can adjust it if your checkout redirects elsewhere.
3. Confirm consent and disclosure are in place before you rely on the data, since
   order and user information is being sent to Google.
