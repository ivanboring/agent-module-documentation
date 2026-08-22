# DXP Assistant — manual setup guide

**DXP Assistant** (`dxp_assistant`) connects your Drupal site to a suite of DXP
(Digital Experience Platform) products by wiring an on‑site AI/help **assistant** into
Drupal — loading the assistant's scripts and exposing the endpoints and information
the assistant needs to function. In practice, it's the integration glue between your
Drupal site and an external DXP assistant service.

The module provides its own **permission** to control access, and it targets **Drupal
10.4+ and 11**. It is an early‑stage project: the maintainers describe it as **work in
progress** (an alpha release), so expect the feature set and configuration to evolve.

Because this is an AI integration that talks to an external service, the important
operational concern is **credentials and egress**. Any DXP or assistant API key must
be stored securely as a secret — never hard‑coded or committed. On DDEV, save it as an
environment variable (`ddev dotenv set .ddev/.env --dxp-api-key=<value>` then `ddev
restart`) and, where the integration supports it, reference it through a **Key**
entity rather than pasting the value into a form. Be aware, too, that using a hosted
AI assistant means site and visitor interactions may be sent to a third‑party
service, which has both **privacy** and **cost** implications worth confirming before
you go live.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install with Composer and enable the
   module.

This module does not document a dedicated settings form (it is an early
work‑in‑progress release). Provide the assistant's credentials securely via an
environment variable / Key as described above, and grant the module's permission to
the roles that should use the assistant. Consult the project page for the current
configuration steps for your release.

## Where it lives

DXP Assistant integrates an external assistant rather than adding a conventional
admin settings screen. Its access is governed by the **permission** it provides —
grant it under **People → Permissions** to the roles that should interact with the
assistant.
