<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
API Toolkit provides a simple framework for creating APIs.

---

API Toolkit provides a **simple framework for creating custom API endpoints** — helpers for defining routes
that return serialized (JSON) responses in a structured way, with an examples submodule. It depends on core
Serialization, in the API package.

Use it as a developer foundation for building APIs. It is a developer/web-services feature. Security note: **you
own the access control** for endpoints you build with it — every custom endpoint must define its own `_access`/
`_permission` and check entity/field access before returning data (the toolkit gives you the plumbing, not
authorization). It has no access-control role of its own. Build your endpoints with proper access checks.

---

- Provide an API-building framework.
- Define serialized (JSON) endpoints.
- Structure API responses.
- Depend on core Serialization.
- Provide an examples submodule.
- Serve developers.
- PUT access control on your own endpoints.
- Define _access/_permission per endpoint.
- Check entity/field access before returning data.
- Have no access-control role of its own.
- Build endpoints with access checks.
- Handle API building.
- Create endpoints.
- Configure the framework.
- Build APIs.
- Handle the plumbing.
- Serialize responses.
- Define routes.
- Secure your endpoints.
- Provide an API framework.
