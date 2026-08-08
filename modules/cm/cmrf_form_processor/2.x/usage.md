<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
CiviMRF Form Processor submits Webform actions to CiviCRM's Form Processor via the CiviMRF (CiviCRM REST framework) connection, with display and Mollie submodules.

---

Sites running CiviCRM alongside Drupal often collect data in Webforms that should flow into CiviCRM. CiviMRF Form Processor submits Webform actions to CiviCRM's Form Processor over the CiviMRF connection, with `cmrf_form_processor_display` and `cmrf_form_processor_mollie` (payment) submodules. It forwards submission data — personal data — to CiviCRM, so the CiviMRF connection credentials are secrets to protect and the data-handling posture (consent, what is sent) applies. The Mollie submodule adds payment, bringing payment-security considerations. Configure the CiviMRF connection securely and confirm what submission data flows to CiviCRM.

---

- Submit Webforms to CiviCRM.
- Use CiviCRM Form Processor.
- Forward submissions via CiviMRF.
- Integrate Webform and CiviCRM.
- Keep CiviMRF credentials secure.
- Handle submission data as PII.
- Add Mollie payment.
- Confirm what data flows.
- Route form data to CiviCRM.
- Configure the connection securely.
- Enable when needed.
- Keep disabled otherwise.
- Restrict administration.
- Confirm on your site.
- Test before production.
- Review configuration.
- Pair with related modules.
- Verify theme fit.
- Match your use case.
- Confirm compatibility.
- Use deliberately.
- Review after upgrades.