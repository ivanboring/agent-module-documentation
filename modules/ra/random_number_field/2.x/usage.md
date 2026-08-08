<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Random Number Field provides a field type that populates with a random number, for non-cryptographic identifiers, sampling or test data.

---

Some content needs a random number — a raffle number, a sampling weight, a non-sequential identifier. Random Number Field is a field type that generates a random number on creation. The critical caveat is that it is for **non-security** purposes: the randomness is ordinary (not cryptographically secure), so it must never be used where unpredictability matters for security — not as a token, a password, a secret code, or anything an attacker should not guess. For raffle numbers, display randomisation, or test data it is fine; for anything security-sensitive, use a cryptographic source instead.

---

- Add a random number field.
- Generate a raffle number.
- Populate a non-sequential ID.
- Create sampling weights.
- Add random test data.
- Use for non-security purposes.
- Never use as a token.
- Never use as a secret code.
- Avoid for security randomness.
- Generate a display random.
- Randomise an identifier.
- Use a crypto source for secrets instead.
- Enable when needed.
- Keep disabled otherwise.
- Restrict administration.
- Confirm on your site.
- Test before production.
- Review configuration.
- Pair with related modules.
- Verify theme fit.
- Match your use case.
- Confirm compatibility.