<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Advanced Sanitize — agent index

Plugins to **extend Drush `sql:sanitize`** (scrub extra/custom PII fields when copying a prod DB to dev/
staging). Drush commands; provides permissions. Version **1.2.2**. Core `^9||^10||^11`.

**Security/privacy-positive** — removes real personal data before it reaches a less-protected dev environment
(PII-leak reduction). Ensure the sanitize covers **all** PII fields (incomplete sanitize still leaks). No
runtime access role.
