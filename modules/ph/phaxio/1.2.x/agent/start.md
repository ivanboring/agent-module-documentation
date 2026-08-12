<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Phaxio — agent index

**Phaxio online-fax integration** (send + status callback). Version **1.2.3**. Core `^9||^10||^11`.

**SECURITY (1.2.3):** `/phaxio/status` is `_access: TRUE` and fires `hook_phaxio_status` with NO `X-Phaxio-Signature` HMAC verification → forgeable fax-status events (base only fires a hook; verify the signature before acting). Secret env-backed.