# Coffre Fort — manual setup guide

**Coffre Fort** (`coffre_fort`) — French for "safe" or "strongbox" — stores
highly confidential information encrypted in the database, and reveals it only
when an operator **unlocks** the safe. The idea is to keep secret values (an API
token, a private note, a number) out of plain sight until the right moment: while
a safe is locked, replacement placeholder values are shown instead of the real
secrets; once unlocked, the real values become readable. Every private-data name
is exposed as a **token**, so stored secrets can be referenced in content,
blocks, and configuration.

Each "safe" is a configuration entity holding an encrypted per-safe key, and the
individual private-data items (a simple string, a text value, a number) are
encrypted with that key using OpenSSL (AES-256). A pluggable **secret provider**
supplies the key that unlocks the safe. The default is a **password** provider —
the user's password is never stored; after unlocking, a 24-hour cookie holds the
re-encrypted key. Additional providers integrate with **HashiCorp Vault** and
**Keycloak / OpenID** as the source of the unlock key.

It depends on the **Token** module and supports Drupal 8.9 through 10. Access is
governed by permissions — **Administer coffre fort** for managing safes and
**Unlock coffre fort** for operators who reveal secrets — plus per-entity update
access.

> **Please read this before relying on Coffre Fort for real secrets.** The
> module's own documentation flags two cryptographic weaknesses in this version.
> First, the encryption uses a **fixed, all-zero initialisation vector reused for
> every encryption**, which undermines the confidentiality that AES-256 in
> CTR mode is supposed to provide (identical inputs produce an identical
> keystream). Second, decryption passes the decrypted bytes through PHP's
> `unserialize()` **without restricting the classes it will instantiate**. Treat
> this module with caution for genuinely sensitive material, keep it behind
> tightly held permissions, and weigh a dedicated secrets manager (or Drupal's
> Key module with a hardened provider) for high-value credentials. If you
> integrate the Vault or Keycloak providers, store *their* connection secrets in
> environment variables rather than in configuration.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install with Composer and enable the
   module and its Token dependency.
2. [Configuration](configuration/index.md) — module settings, creating a safe,
   choosing a secret provider, and unlocking.

## Where it lives in the admin menu

Module settings sit at **Configuration → System → Coffre Fort**
(`/admin/config/system/coffre_fort`), reachable by users with the **Administer
coffre fort** permission. Safes and their private-data entries are managed under
`/admin/structure/coffre-fort/...`, where you also unlock and relock them.
