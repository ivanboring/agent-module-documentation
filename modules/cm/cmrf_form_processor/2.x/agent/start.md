<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# CiviMRF Form Processor (cmrf_form_processor) — agent index

Submits **Webform actions to CiviCRM's Form Processor** via CiviMRF. Version **2.2.19**. Submodules
`cmrf_form_processor_display`, `cmrf_form_processor_mollie` (payment).

**Creds/privacy:** CiviMRF connection credentials are secrets; forwards submission PII to CiviCRM
(consent/disclosure). Mollie submodule adds payment considerations.