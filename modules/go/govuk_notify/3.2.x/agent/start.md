<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# GOV Notify Integration (govuk_notify) — agent index

Sends **email, SMS and letters** through **GOV.UK Notify** and its Canadian and Australian
equivalents. Submodule `govuk_notify_views_backend`. Settings behind
`administrator gov uk notify`. Version **3.2.1**. Core requirement `^10.3 || ^11`.

**What Notify is:** the shared messaging platform built by the UK **Government Digital Service** and
adopted as open source by the Canadian and Australian governments — hence all three in the
description. For a public body it is usually the **default rather than a choice**: already procured,
already assessed.

**What it handles that a site should not:**
- **templates live in Notify**, so the wording of a statutory letter is edited and versioned by the
  people responsible for it;
- **delivery is reported per message**, so *"did the applicant receive the decision"* has an answer;
- it sends **letters — actual printed post** — because a public service cannot assume digital
  access, and a print pipeline is not something a website should build.

**Three things for the deployment:**
1. **Key scope matters.** Notify issues **live, test and team-only** keys — a live key in a
   non-production environment is how a test run **sends real letters to real people**. A
   recognisable incident in this sector, not a hypothetical.
2. **Personalisation is the payload** — names, addresses, reference numbers, case details. A
   processing activity to record, not a technical detail.
3. **The template is the message.** An integration that **hard-codes text** defeats the arrangement
   it was adopted for; the site's job is supplying the right variables.
