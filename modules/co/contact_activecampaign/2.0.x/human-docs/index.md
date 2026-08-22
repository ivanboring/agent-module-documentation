# Contact ActiveCampaign — manual setup guide

**Contact ActiveCampaign** (`contact_activecampaign`) forwards submissions from
Drupal's core Contact forms into [ActiveCampaign](https://www.activecampaign.com),
the marketing-automation and CRM platform. When someone submits a contact form,
the module sends the data to your ActiveCampaign account, turning each submission
into an ActiveCampaign contact record you can use in campaigns and automations.

The link between the two systems is a **field mapping**: fields you have added to
a Drupal contact form are mapped, by hand, to fields you have already created in
ActiveCampaign. That mapping is the heart of the setup, so this module needs
configuration before it does anything — enabling it alone is not enough.

It depends on two things: Drupal core's **Contact** module (which provides the
forms) and the **ActiveCampaign API** module (`activecampaign_api`), which holds
your ActiveCampaign account URL and API key and does the actual talking to the
service. You configure your credentials there; this module builds on top of that
connection.

A note on credentials and security: your ActiveCampaign API key is a secret.
Store it in an environment variable and reference it through a Key entity rather
than pasting it into configuration that could be exported or committed — see the
[Configuration](configuration/index.md) guide for the exact steps. This module's
project page also notes it is **not covered by Drupal's security advisory
policy**, so treat it accordingly and keep it up to date.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install the module and its
   ActiveCampaign API dependency with Composer, and enable them.
2. [Configuration](configuration/index.md) — store your API credentials safely,
   then map contact-form fields to ActiveCampaign fields.

## Where it lives in the admin menu

The module has no single settings page of its own listed in `data.json`. In
practice you work in two places: the **ActiveCampaign API** module's settings
(where the account URL and API key live) and the per-contact-form field mapping
this module adds. Both are covered in [Configuration](configuration/index.md).
