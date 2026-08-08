<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Email Obfuscator — agent index

**Obfuscates email addresses in output** to deter harvesting bots (encode/scramble `mailto:` in markup —
reduce spam). Version **1.0.1**. Core `^10||^11`.

**Caveat — deterrent, NOT real protection:** the email is still delivered to the browser (obtainable via
deobfuscation/viewing) — reduces casual harvesting only, doesn't keep an address private. No access role.
