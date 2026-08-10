<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Diba Integration — agent index

An **integration/setup meta-module for the Diputació de Barcelona (Diba) platform** — bundles/configures standard
modules (admin toolbar, Antibot/Honeypot, backup, Masquerade, Pathauto, SAML submodule, …). Submodules:
`diba_integration_cogo/extra/saml/vus`. Version **1.3.1**. Core `^10.3||^11||^12`.

Integration/distribution — pulls in **privileged modules (Masquerade impersonation, SAML auth)**: lock those
down (restrict masquerade; verify SAML metadata/certs; secure secrets). Layers on their access controls.
