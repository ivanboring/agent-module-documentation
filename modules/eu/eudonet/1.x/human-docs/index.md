# Eudonet — manual setup guide

**Eudonet** (`eudonet`) provides an **API client for the Eudonet CRM**. It is a
client/service layer — the connectivity foundation that lets Drupal read from and
write to the Eudonet CRM's API, so other modules or custom code can synchronise
contacts and CRM records between your site and Eudonet.

By itself it is not a user‑facing feature; think of it as the plumbing your
integration builds on. It talks to the Eudonet API on your behalf, which means two
things worth planning for from the start:

- **Egress and credentials.** The client makes outbound calls to the Eudonet API
  using your Eudonet credentials, over HTTPS. Those credentials are sensitive and
  should be stored as secrets (an environment variable, ideally surfaced through a
  **Key** entity) rather than committed to configuration.
- **Personal data.** CRM records are typically contact data (PII). Moving that data
  between systems has privacy implications — disclose it in your privacy policy and
  handle it according to your obligations.

The module has no access‑control role of its own.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install with Composer and enable the
   module.

This module is a developer‑facing API client and does not present its own
end‑user configuration screen. What it needs to operate — your Eudonet API
credentials — should be provided as secrets, described in "How to use it" below.

## How to use it

Eudonet is the integration foundation: enable it, then build (or add) the module or
custom code that uses its client to read/write Eudonet CRM records.

**Provide the Eudonet credentials as secrets.** Keep the values in environment
variables rather than in exported configuration. With DDEV, save them into the
project's dotenv file (never commit `.ddev/.env`) and restart so the container picks
them up:

```bash
ddev dotenv set .ddev/.env --eudonet-api-token=<your-token>
ddev restart
```

The flag `--eudonet-api-token` becomes the environment variable
`EUDONET_API_TOKEN` inside the web container, which your integration (or a **Key**
entity using the env provider) can reference — so the raw secret stays out of
version control. Always ensure the client talks to Eudonet over HTTPS.
