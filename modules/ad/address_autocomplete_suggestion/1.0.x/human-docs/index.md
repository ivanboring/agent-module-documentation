# Address Autocomplete Suggestion — manual setup guide

**Address Autocomplete Suggestion** (`address_autocomplete_suggestion`) adds a
type-ahead widget to the **Address** module's field that suggests full addresses as
a person types. Unlike modules tied to one service, it uses a **pluggable provider
system**: you pick which third-party geocoding service does the lookups. Out of the
box it supports **Google Maps**, **Mapbox Geocoding**, and **Post.ch** (the Swiss
Post address service), and developers can add more by implementing a provider
plugin.

It extends the Address module's default widget, so it slots into forms that already
use `address`. As a visitor types into the address line, the widget queries your
chosen provider through a small JSON endpoint on your site and offers normalized
suggestions (street, town, province, postcode) that fill the fields.

**Read the security note before you go live.** In this release the internal
autocomplete endpoint is open to anonymous visitors, which means anyone could
drive lookups against your paid provider using your stored credentials — a billing
and quota risk the module's own author flags as a to-do. Plan to restrict that
endpoint before exposing the site publicly. This is covered in
[Configuration](configuration/index.md).

This guide is written for a **human** clicking through the admin UI. If you want
terse, token-cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install the module with Composer and
   enable it.
2. [Configuration](configuration/index.md) — choose the provider, enter its
   credentials, switch a field to the widget, and read the security note.

## Where it lives in the admin menu

You choose the active provider at `/admin/config/address-autocomplete-suggestion`
(needs **Access administration pages**), and enter each provider's credentials at
`/admin/config/address-autocomplete/<provider>`. The widget is then selected per
content type under **Structure → Content types → [type] → Manage form display**.
