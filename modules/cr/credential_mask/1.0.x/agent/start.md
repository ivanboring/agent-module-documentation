<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Credential Mask — agent index

Prevents **credentials/secret keys from being written into exported (config-sync) configuration** (masks
values listed in `credential_mask.sensitive_config` so secrets don't land in synced YAML / Git). Version
**1.0.0**. Core `^8.8||^9||^10||^11`.

**Security-positive** (exported config in Git is a common secret-leak channel). Defense-in-depth — the real
fix is keeping secrets out of config (env vars / Key); configure **which** keys are sensitive (unlisted keys
still export). No access role.
