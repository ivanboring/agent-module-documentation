# Confirmation — manual setup guide

**Confirmation** (`confirmation`) is a **developer framework**, not a
point‑and‑click feature. It provides a reusable set of "confirmation entities" for
building confirm / disconfirm flows — the kind of double‑opt‑in, approval, or
verification step where a user receives a link (usually by email, but it could be
any channel), clicks it, and thereby confirms or rejects a pending action. Each
confirmation entity represents one such pending action, carries a hash meant to act
as its capability token, and can optionally have an expiry time. The response link
looks like `/confirmation/{confirmation}/{hash}`.

The module deliberately provides only the **core mechanics**. It has no admin
settings page and no ready‑made user‑facing feature: any domain‑specific logic
(what the confirmation actually *does*, what data it stores) lives in a bundle
class and its fields that an integrating module supplies. The distribution ships a
`confirmation_example` submodule and tests to show the pattern. It supports Drupal
10 and 11 and depends only on core.

**A security note for developers, taken from the module's public documentation.**
As shipped (3.0.1), the response route is publicly accessible (`_access: TRUE`) and
the `{hash}` token in the URL is **not validated anywhere**, while confirmation IDs
are sequential integers. In practice this means someone could enumerate
`/confirmation/<n>/anything` and confirm or disconfirm arbitrary confirmations
without knowing the real hash. Before you rely on this in production, add a check
that compares the supplied hash against the entity's stored hash (for example a
`hash_equals()` comparison in a route `_custom_access` handler or in the response
form's access logic). Treat the built‑in behaviour as a starting point, not a
finished access control.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install with Composer and enable it.

There is **no configuration page** — this is an API/framework module. You wire it
up in code by defining a confirmation bundle and the logic each confirmation
performs. Start from the bundled `confirmation_example` submodule and tests.
