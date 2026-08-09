<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Reset Password Email OTP lets users reset their password with OTP authentication.

---

Reset Password Email OTP replaces the standard reset-link flow with an **email OTP (one-time password)**
— the user requests a reset, receives an OTP by email, and enters it to set a new password. It depends on core
Block and User, provides its own permissions and a block, in the Security package.

Use it for OTP-based password resets. The design has good parts and a real weakness. Good: the OTP is generated
with a **CSPRNG** (`random_int`) at a **configurable length** over a 69-char alphabet (strong against
guessing), and there is a **wrong-attempt limit**. **Security caveat (this version): the OTP never expires and
is not single-use.** The stored issuance `time` is used only to pick the latest OTP (not to enforce an
expiry — there is no TTL check), and the OTP row is **not deleted after a successful reset** — so an OTP that
is intercepted or leaked (forwarded email, breached/again-accessed mailbox, mail logs, shoulder-surf) stays
valid **indefinitely and can be replayed** to take over the account. The comparison is also `!=`
(non-constant-time). Guessing is well-mitigated (strong token + attempt limit), so the risk is the **exposure
window**, not brute force. Until patched: enforce a short **TTL**, **delete the OTP after use** (single-use),
and use `hash_equals()`. Configure OTP length/attempt limit; keep the reset mailflow trustworthy. See the local
security.md.

---

- Reset passwords via an email OTP.
- Generate the OTP with a CSPRNG.
- Use a configurable OTP length.
- Limit wrong attempts.
- KNOW the OTP never expires (no TTL check).
- KNOW the OTP is not deleted after use (replayable).
- Understand a leaked OTP stays valid indefinitely.
- Know guessing is mitigated (strong token + attempt limit).
- Enforce a short TTL until patched.
- Delete the OTP after use (single-use).
- Use hash_equals() (currently !=).
- Keep the reset mailflow trustworthy.
- Provide its own permissions and a block.
- Handle OTP reset.
- Configure the OTP.
- Depend on core Block and User.
- Secure the reset flow.
- Reset via OTP.
- Patch expiry/single-use.
- Provide email-OTP reset.
