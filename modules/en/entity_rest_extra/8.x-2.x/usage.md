<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Entity REST Extra provides extra REST resources to access entities configuration.

---

Entity REST Extra adds **REST resources that expose entity configuration** — lists of bundles, a bundle's
fields, and a bundle's view modes — so a decoupled client can discover the site's content model over REST. It
depends on core Serialization and REST UI, in the Web services package.

Use it to let a front end introspect the content model. It is a decoupled/web-services feature. Security note:
these resources expose the **content-model metadata** (which bundles/fields/view modes exist) — they are gated
by REST permissions (enable the resource + grant its `restful get …` permission), so **grant them carefully**:
exposing the content model to untrusted clients reveals internal structure (a mild information-disclosure /
reconnaissance surface). It has no access-control role of its own beyond the REST permissions. Enable and gate
the resources.

---

- Expose entity config over REST.
- List bundles, fields, view modes.
- Let a client discover the content model.
- Depend on Serialization and REST UI.
- Serve decoupled clients.
- Introspect the content model.
- Gate resources by REST permissions.
- Grant them carefully (reveals structure).
- Treat it as a recon surface.
- Have no access-control role of its own.
- Enable and gate the resources.
- Handle config REST.
- Expose bundles/fields.
- Configure the resources.
- Discover the model.
- Handle the integration.
- Expose metadata.
- Provide REST config.
- Restrict the resources.
- Provide entity config REST.
