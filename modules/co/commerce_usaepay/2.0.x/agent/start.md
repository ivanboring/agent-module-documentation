<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Commerce USAePay — agent index

A Drupal Commerce **on-site payment gateway for USAePay**. Depends on `commerce_payment`. Version
**2.0.0-beta3**. Core `^10||^11`.

Payment handling **server-authoritative** (reviewed): submits to the **USAePay API server-side** and reads the
outcome from the API response `ResultCode` (`A`=approved) — not a client field. On-site (handles card data):
ensure **PCI handling** (HTTPS/tokenization); store **credentials** as secrets. No access role.
