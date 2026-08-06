<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Webform Promotion Code adds a form element that validates a promotion or voucher code against a configured list.

---

Codes turn up wherever access or price is being gated without a full commerce system: a conference registration with a speaker code, a members-only booking form, a training course with a partner discount, a survey restricted to invited participants, a free-trial signup. Building the check by hand means a validation handler and somewhere to keep the codes, and the somewhere is usually a hard-coded array. A dedicated element makes the codes configuration and the validation part of the form. Version **8.x-1.2** on `^9 || ^10 || ^11`, requiring `webform`. Three things determine whether the codes are worth anything. **Single-use versus reusable is the design question**: a code that can be submitted repeatedly is a code that will be, once one recipient posts it somewhere, so if uniqueness matters the element must record redemption rather than only validate — check which this does before designing a campaign around it. **Codes must be guess-resistant and rate-limited**: a short or sequential code with an unlimited number of attempts is enumerable, and core's flood control is the thing that stops that, since the form otherwise offers unlimited free guesses. And **the comparison should be constant-time and the codes stored appropriately** — a code is a shared secret, so `hash_equals()` is the right primitive, and a list of live codes sitting in exported configuration is a list in version control.

---

- Validate a conference speaker code.
- Gate a members-only booking form.
- Apply a partner discount code.
- Restrict a survey to invited participants.
- Validate a free-trial code.
- Add a voucher field to a form.
- Gate a registration behind a code.
- Validate an access code for training.
- Restrict a form to code holders.
- Add a promotion code to a signup.
- Validate a referral code.
- Gate an event registration.
- Check a membership code.
- Add a discount code element.
- Restrict a competition entry.
- Validate a campaign code.
- Gate a download form.
- Check an invitation code.
