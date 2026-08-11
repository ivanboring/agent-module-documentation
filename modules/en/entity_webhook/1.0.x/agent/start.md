<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Entity Webhook — agent index

**Inbound webhook ingestion that upserts content entities** from posted JSON (endpoints at
`/webhook/{endpoint}/{source_type}`; outbound/polling submodules). Provides permissions. Version
**1.0.0-alpha1**. Core `^10.3||^11`.

**SECURITY (campaign finding)** — the receiver is **public (`_access: TRUE`)** and verification is **optional +
fail-open**: `runVerification()` returns TRUE when the source type's verifier is empty, and that **defaults to
empty** ("- None -"). A source type with no verifier accepts **unauthenticated** POSTs that create/update entities
from attacker JSON. HMAC/API-key/domain-whitelist verifiers ship — **always configure one** (never "- None -");
store the secret via Key/env; HTTPS; scope field mappings.
