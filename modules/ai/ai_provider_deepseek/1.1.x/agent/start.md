<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# DeepSeek Provider (ai_provider_deepseek) — agent index

**DeepSeek** provider plugin for Drupal's **`ai`** module. Requires `ai (>=1.0-beta)` and **`key`**.
Version **1.1.0**. Core requirement `^10 || ^11`.

**Its position among providers is cost and openness.** Priced well below the established Western
APIs, with **published weights** — so a site can prototype on the hosted API and move to
**self-hosting** without changing anything above the provider layer. For a **high-volume,
low-stakes** workload (classifying tickets, drafting alt text, summarising an archive) the cost per
token decides whether the feature is affordable at all.

**Raise the jurisdiction question explicitly rather than leaving it implied.** DeepSeek is a
**Chinese company processing in China** — prompts sent to the hosted API **leave the EU and the
UK**, and several European regulators and public bodies have issued guidance restricting its use.
For a site handling personal data, unpublished content, or anything under a data-residency policy,
that is a **procurement and data-protection decision**, to be answered **before** the module is
configured.

**Self-hosting is what makes the model usable where the hosted API is not** — the weights run on
infrastructure the organisation controls, removing the transfer question entirely. That is why
openness matters here beyond ideology.

**The three standing points apply:** the key is a **spending credential**; a **prompt is a
disclosure**; a **pinned model** needs a plan for when it changes.
