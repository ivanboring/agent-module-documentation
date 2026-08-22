# Entity Webhook — manual setup guide

**Entity Webhook** (`entity_webhook`) turns Drupal into a webhook hub. Its core
module **receives inbound webhooks** — external services POST JSON to an endpoint
on your site, and the module creates or updates ("upserts") content entities from
that payload, all configured through the admin UI with no custom code. Two
optional submodules extend it the other way: **Broadcast** sends *outbound*
webhooks when your entities change, and **Polling** pulls data from external APIs
on a schedule and feeds it through the same pipeline.

On the inbound side you build a small configuration hierarchy: an **Endpoint**
(the target entity type and optional bundle), a **Source Type** under it (how to
verify the request and how to map payload fields into entity fields, using
JSONPath expressions like `$.order.customer.email`), and **Field Mappings** that
can transform values and mark identifier fields for upsert matching. Webhooks are
accepted immediately and processed on cron, so keep cron running.

> **Security — read this before you expose an endpoint.** The receiver route is
> **public**, and request verification is **optional and fail-open**: if a Source
> Type has **no verification plugin** selected (the default, shown as
> "- None -"), the endpoint will accept **unauthenticated** POSTs and write the
> attacker-controlled JSON into your content entities. This is a real content
> injection / overwrite risk. The module ships **HMAC signature**, **API key**,
> and **IP/domain whitelist** verifiers — **always configure one** on every
> Source Type and treat "- None -" as unsafe. Store any HMAC or API-key secret
> via the Key module or an environment variable (never hard-code it), serve the
> endpoint over HTTPS, and scope each field mapping to the minimum fields needed.

The **Broadcast** submodule (outbound) is safer by design: it can HMAC-sign the
requests it sends and retries with exponential backoff, logging deliveries for
auditing. Because it sends HTTP requests out to a URL you configure, treat that
destination URL as trusted and sign the payloads so the receiver can verify them.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install with Composer, enable the
   core module and only the submodules you need.
2. [Configuration](configuration/index.md) — building inbound endpoints (and the
   verifier you must configure), outbound broadcasts, and scheduled polling.

## Where it lives in the admin menu

- **Inbound webhooks** — **Configuration → Web services → Webhooks**
  (`/admin/config/services/webhooks`).
- **Outbound endpoints** (Broadcast submodule) —
  `/admin/config/services/outbound-endpoints`.
- **Polling** (Polling submodule) —
  `/admin/config/services/entity-webhook-polling`.
