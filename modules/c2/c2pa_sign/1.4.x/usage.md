<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
C2PA Sign signs compatible media assets when uploaded and published.

---

C2PA Sign **signs compatible media assets with C2PA content-provenance metadata** — when media is uploaded
and published, it attaches a signed C2PA manifest (Content Provenance and Authenticity) recording origin/edits,
so downstream consumers can verify the asset's authenticity. It is in the C2PA package.

Use it to add provenance signing to media. It is a **security/authenticity-positive** feature. The critical
consideration is the **signing key/certificate**: C2PA signing uses a private key/cert that proves the assets
came from you — it **must be stored securely** (a proper key store / HSM / env, never in the codebase or exported
config), protected and rotated per policy, since a leaked signing key lets others forge provenance in your name.
It has no access-control role. Configure the signing certificate/key securely.

---

- Sign media with C2PA provenance.
- Attach a signed C2PA manifest.
- Record origin/edits on assets.
- Sign on upload and publish.
- Serve content authenticity.
- BE security/authenticity-positive.
- USE a private signing key/certificate.
- Store the signing key securely (key store/HSM/env, not code/config).
- Protect + rotate the key (a leak lets others forge provenance).
- Have no access-control role.
- Configure the signing certificate/key securely.
- Handle C2PA signing.
- Sign assets.
- Configure the signing.
- Add provenance.
- Handle the manifest.
- Verify authenticity.
- Secure the signing key.
- Prove origin.
- Provide C2PA signing.
