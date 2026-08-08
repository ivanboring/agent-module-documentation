<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Documentation generator — agent index

Lets admins **generate documentation describing site features/configuration** (content types/fields/modules
— onboarding/handover). Provides permissions. Version **2.0.9**. Core `^9.3||^10||^11`.

**Security:** generated docs reveal site structure/config (sensitive operational detail aiding attackers) —
restrict generation/viewing to trusted admins; don't expose publicly. Reads config to produce docs; no
content-access role.
