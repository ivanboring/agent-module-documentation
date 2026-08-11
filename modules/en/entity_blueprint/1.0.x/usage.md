<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Entity Blueprint provides bidirectional JSON entity serialization for AI workflows.

---

Entity Blueprint **serializes entities to/from JSON for AI** — bidirectional JSON serialization of entities
so they can be consumed and produced by AI workflows (e.g. an AI reading/writing entity data). It works on core
10.3–11.

Use it to bridge entities and AI JSON. It is a developer/AI-integration feature. Security/data handling: if the
JSON is sent to or received from an **AI provider**, that's egress of entity content (which can be sensitive), and
any writes back to entities from AI-produced JSON should **respect entity/field access and validation** (don't
blindly apply AI output). It has no access-control role. Configure the serialization.

---

- Serialize entities to/from JSON.
- Support AI workflows.
- Enable bidirectional entity JSON.
- Serve developers/AI integration.
- Bridge entities and AI.
- Read/write entity data.
- Note JSON to/from an AI provider is egress of entity content (can be sensitive).
- Respect entity/field access + validation on writes from AI JSON.
- Not blindly apply AI output.
- Have no access-control role.
- Configure the serialization.
- Handle entity serialization.
- Serialize entities.
- Configure the JSON.
- Read entities.
- Handle the AI.
- Write entities.
- Convert entities.
- Validate writes.
- Provide entity JSON serialization.
