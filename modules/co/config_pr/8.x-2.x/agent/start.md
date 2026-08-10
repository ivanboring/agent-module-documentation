<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Config PR — agent index

Lets admins **open pull requests of configuration changes to a Git host** (GitHub/GitLab/Bitbucket provider
submodules — UI config into code review). Depends on core `config`, `field`. Provides permissions. Version
**8.x-2.0-beta3**. Core `>=8`.

DevOps/admin — uses **Git host API tokens** (store as secrets, least privilege); **exported config can hold
sensitive values** (review + push to a private repo); gate the permission to trusted operators.
