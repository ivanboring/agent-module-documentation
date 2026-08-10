<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Entity Deep Token gets values from deep in an entity to use in the token process.

---

Entity Deep Token **exposes values from deep within an entity's reference chain as tokens** — so a token
can pull a value from a referenced entity (and its references), not just the entity's own fields, for use
wherever tokens are processed. It depends on the Token module, in the Other package.

Use it to reach referenced-entity values via tokens. It is a developer/tokens feature. Security note: deep
tokens can **surface values from referenced entities**, which may include data the current viewer shouldn't
see — so be careful **where** you use these tokens (e.g. don't embed a deep token that resolves restricted
referenced data into output shown to unauthorized users); token replacement does not itself enforce entity
access. It has no access-control role. Configure/use the deep tokens.

---

- Expose deep referenced values as tokens.
- Reach referenced-entity fields.
- Traverse reference chains.
- Depend on the Token module.
- Use values beyond own fields.
- Serve token processing.
- KNOW deep tokens can surface referenced data.
- Be careful where you use them.
- Not embed restricted data for unauthorized users.
- Know tokens don't enforce entity access.
- Have no access-control role.
- Configure the deep tokens.
- Handle deep tokens.
- Get referenced values.
- Configure tokens.
- Traverse references.
- Handle the tokens.
- Reach deep values.
- Use the tokens.
- Provide deep tokens.
