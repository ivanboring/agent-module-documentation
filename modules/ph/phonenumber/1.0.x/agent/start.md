<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# PhoneNumber (phonenumber) — agent index

International phone number field backed by `giggsey/libphonenumber-for-php ~8.0`. Depends on core
`field`. Core requirement `^8.8 || ^9 || ^10 || ^11`. **Release is 1.0.0-beta1 — beta.**

| Submodule | Provides |
|---|---|
| `phonenumber_validation` | format / country validation |
| `phonenumber_verification` | **SMS ownership verification** (send code, enter code) |

Key facts:
- **Validation ≠ verification, and the distinction matters.** Validation says the number is
  well-formed and could exist. Verification says someone answered on it. Only verification is
  evidence for anything security-adjacent — account recovery, 2FA, or preventing a user entering
  a number they do not control. Do not let the two be conflated in a design discussion.
- `phonenumber_verification` needs an **SMS gateway**, configured outside this module. That is a
  per-message cost and an abuse surface: an unthrottled "send code" endpoint is an SMS-pumping
  vector. Check rate limiting before exposing it to anonymous users.
- **Phone numbers are personal data.** Storing and verifying them carries GDPR obligations —
  lawful basis, retention, and covering the SMS provider as a processor.
- Compare with `telephone_advanced` (wave 60), which adds libphonenumber validation to **core's**
  telephone field without a new field type. Choose that for an existing site with data; choose
  this when verification is needed or the field is new.
- CSS uses Drupal's PostCSS convention (`.pcss.css` sources plus compiled `.css`), including a
  no-script variant.
