<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Symfony Messenger (sm) — agent index

Integrates the **Symfony Messenger** message bus with Drupal (async processing, queues). Version
**0.2.0**. Submodule `sm_config`. Developer infrastructure.

Security is in the **messages and handlers** (handlers run with site privileges); if a transport is
an external broker, protect its credentials and mind message contents.