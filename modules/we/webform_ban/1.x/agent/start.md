<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Webform Ban (webform_ban) — agent index

Blocks **webform submissions from IPs banned via core's Ban module**. Version **1.2.4**.

Reuses core's ban list (consistent — one list applied to forms). IP-ban cautions: blocks everyone
behind a shared IP; behind a proxy ensure the **real client IP** is used (trusted-proxy config).