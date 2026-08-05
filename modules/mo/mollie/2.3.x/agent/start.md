<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Mollie for Drupal (mollie) — agent index

Integration with the **Mollie** PSP (iDEAL, cards, local methods — mainly NL/BE). API work by
`mollie/mollie-api-php ^2.52`. Core requirement `^10.1 || ^11`.
Admin at `/admin/mollie`.

| Submodule | Context |
|---|---|
| `mollie_commerce` | Drupal Commerce payment gateway |
| `mollie_webform` | take payment as part of a **webform** submission (donations, fees) |
| `mollie_customers` | Mollie customer records for recurring/stored payments |

Key facts:
- **PHP version mismatch to check on the host:** the info file declares **`php: 8.3`** while
  `composer.json` says `>=8.1`. The info file is what Drupal enforces at install.
- Both permissions are **`restrict access: TRUE`** (`access mollie payments overview`,
  `administer mollie`) — right, since the overview lists financial records.
- **The webhook is the security-critical path**, as with every PSP: Mollie calls back to confirm
  payment, and the callback must be treated as untrusted. The correct pattern (and what the
  Mollie API client supports) is to **re-fetch the payment status from Mollie** using the payment
  id rather than trusting the callback body. Verify that before going live.
- The **API key is a live credential** — environment variable via `ddev dotenv set`, surfaced
  through a Key entity, never in exported configuration.
- `mollie_webform` is the reason to choose this over a Commerce-only gateway: it takes payment
  without adopting the Commerce stack.
