<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Dropfort Update — agent index

Reports the site's **update information** (installed modules/versions, available updates) to a **Dropfort
dashboard** for centralized monitoring. Depends on core `update`. Config at `dropfort_update.settings`;
provides permissions. Version **2.1.3**. Core `^10.1||^11`.

**Note:** transmits the module/version inventory (reveals attack surface) — store Dropfort credentials as
secrets; authenticate the connection; trust the recipient.
