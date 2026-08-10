<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# API Orchestrator — agent index

An **API-orchestration framework** (request queueing, retry logic, REST/GraphQL, service management). Provides
permissions. Version **1.1.7**. Core `^11`.

Developer/integration — calls **external APIs** (your endpoints/credentials as secrets, HTTPS); flows may carry
sensitive data (gate management by permission). No access role of its own beyond that.
