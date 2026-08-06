<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Webform Campaign Monitor (webform_campaignmonitor) — agent index

Webform **handler** subscribing a submitter to a **Campaign Monitor** list. Requires
`campaignmonitor` and `webform`. Version **1.0.1**. Core requirement `^10.3 || ^11.0`.

**Why a handler beats the alternatives:** an embedded provider form does not match the site's design
and bypasses Drupal's validation; a custom submit handler posting to an API usually has **no error
handling**. A handler keeps the form Drupal's — styling, validation, spam protection,
accessibility — with the subscription running **after** a valid submission.

**Three things to settle:**
1. **Consent is the whole point of a subscription form.** The record must show **what was agreed to
   and when**. An unticked box the handler subscribes anyway is the failure regulators look for; a
   **pre-ticked box is not consent** under GDPR.
2. **API failure needs a plan.** Fail the submission (losing a signup for a reason the visitor
   cannot act on), succeed silently (losing the subscription with nobody knowing), or **queue and
   retry** — only the third is really acceptable. **Check what this does.**
3. **The API key is a live credential** over the subscriber list — personal data *and* a commercial
   asset. Environment variable, **Key** entity, scoped as narrowly as the provider allows.
