<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Postgres VDB Provider (ai_vdb_provider_postgres) — agent index

Postgres/**pgvector** vector database provider for the **AI** module.
Configure at `ai_vdb_provider_postgres.settings_form`. Version **1.0.0-alpha3**,
`lifecycle: experimental`. Core `^10.2 || ^11`. Depends on `ai:ai`, `key:key`.

Classes: `PostgresPgvectorClient`, `Enum/VectorIndexStrategy` (the main pgvector performance lever
— build time / memory / recall), `EventSubscriber/VectorIndexConfigSubscriber`,
`Form/PostgresConfigForm`, `Exception/DatabaseConnectionException`.

**Cite the credential handling as correct.** `'#type' => 'key_select'`; `submitForm()` stores the
**Key entity id**, not the secret; the plaintext is resolved only in `validateForm()`, in memory,
for the connection test. Nothing sensitive reaches config.

Positioning: if the stack already runs PostgreSQL, pgvector removes a vendor — embeddings sit in
the same backup and security boundary as everything else. **pgvector must be installed on the
server**; the module does not install it, and the connection test is where you find out.

Experimental + alpha: the API is unsettled.