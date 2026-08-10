<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Deconfig is a developer module for excluding config from export.

---

Deconfig is a **developer module for excluding some configuration from config export/import** — marking
selected config keys as "excluded" so they aren't overwritten by a config import (useful for
environment-specific settings that differ between dev/prod). It is in the Configuration package.

Use it to keep environment-specific config out of config sync. It is a developer/devops tool. Security note: be
deliberate about **what you exclude** — excluding security-relevant config (e.g. permissions, access settings)
from import means it won't be enforced/updated by deployment, which can cause drift; and never use exclusions as
a place to hand-manage **secrets** in the database (use env/Key for secrets). It has no content or access role.
Configure the excluded config.

---

- Exclude config from export/import.
- Mark config keys as excluded.
- Protect environment-specific settings.
- Serve developers/devops.
- Avoid overwriting on import.
- Handle dev/prod differences.
- BE deliberate about what you exclude.
- Not exclude security-relevant config carelessly (drift).
- Not hand-manage secrets here (use env/Key).
- Have no content/access role.
- Configure the excluded config.
- Handle config exclusion.
- Exclude config.
- Configure the exclusions.
- Skip config.
- Handle the config.
- Protect settings.
- Exclude keys.
- Set the exclusions.
- Provide config exclusion.
