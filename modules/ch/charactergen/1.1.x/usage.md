<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Character Generator generates a random 10-character alphanumeric string (a token) for use with Automatic Entity Labels.

---

Character Generator **generates a random 10-character alphanumeric string** — exposing it as a token so it
can be used (e.g. with Automatic Entity Labels) to build a unique-ish auto label/identifier for entities. It
depends on the Token module.

Use it to inject a random string into auto-generated labels. It is a content-authoring helper. Note: the string is
for **labeling/identifier convenience**, not a security token — a 10-char alphanumeric value is not guaranteed
unique and should not be relied on as a secret or unguessable key. It has no access-control role. Use its token in
label patterns.

---

- Generate a random 10-char string.
- Expose it as a token.
- Feed Automatic Entity Labels.
- Depend on the Token module.
- Serve content authoring.
- Build auto labels.
- Provide a labeling convenience, not a secret.
- Not be relied on as unique or unguessable.
- Have no access-control role.
- Use its token in label patterns.
- Handle random strings.
- Generate strings.
- Configure the token.
- Make labels.
- Produce identifiers.
- Configure labeling.
- Handle the token.
- Randomize labels.
- Use the token.
- Provide a random-string token.
