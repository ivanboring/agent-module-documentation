# Commerce Amazon SP-API — manual setup guide

**Commerce Amazon SP-API** (`commerce_amazon_sp_api`) connects Drupal Commerce to
the **Amazon Selling Partner API** so you can fulfil orders placed on your Drupal
store through Amazon. It syncs stock/inventory from your Amazon merchant account and
links Amazon items to your existing Drupal product variations, lets you set
marketplace conditions that decide when an order should be sent to Amazon, and
tracks the resulting Amazon fulfillment order — transitioning your Drupal order as
Amazon reports status updates.

It's important to be clear about scope: this module is for **placing orders from
Drupal to be fulfilled by Amazon** (it integrates Amazon's Fulfillment Outbound and
FBA Inventory APIs). It is **not** for managing your Amazon listings, and it is
**not a payment gateway**. It depends on Commerce Product, Commerce Order, and
**Commerce Shipping** (`commerce_shipping`), works with Commerce v2 or v3, and
provides its own permissions.

The integration is built around four entity types you'll create and manage in
Drupal: an **Amazon App** (mirrors the SP‑API app you created in Amazon Seller
Central and handles authentication), an **Amazon Marketplace** (a region under an
app, holding your fulfillment conditions), **Amazon Items** (Amazon inventory
linked to your Drupal variations), and **Amazon Fulfillment** records (orders
created on Amazon, linked back to your Commerce orders).

On security: the module calls the Amazon SP‑API using **LWA/IAM credentials** and a
refresh token — treat all of these as **secrets** (store them in environment
variables / Key entities, never commit them, and connect over HTTPS). Order data
flowing to Amazon includes **customer PII**, so handle it according to your privacy
obligations.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install with Composer and enable the
   module (plus its Commerce Shipping dependency).
2. [Configuration](configuration/index.md) — create your Amazon App and
   Marketplace, sync inventory, and set the general/order‑integration settings.

## Where it lives in the admin menu

- **Amazon Apps:** `/admin/commerce/amazon/apps`
- **Amazon Marketplaces:** `/admin/commerce/amazon/marketplace`
- **General settings:** **Commerce → Configuration → Amazon SP-API settings**
  (`/admin/commerce/config/amazon-sp-api/settings`)
- **Upcoming/booked fulfillment overview** and order state mapping are driven from
  these settings and entities.
