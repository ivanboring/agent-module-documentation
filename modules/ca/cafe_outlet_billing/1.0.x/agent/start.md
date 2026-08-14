<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Cafe Outlet Billing (`cafe_outlet_billing`) — agent index
**Cafe billing form that renders line items into a TCPDF PDF invoice.**

- **Version:** 1.0.x  | **Core:** ^10 || ^11  | **PHP:** >=8.1 | Composer: `tecnickcom/tcpdf`
- **Depends on:** core `field`, `views`
- **Routes:** `/billing-form` (`cafe_outlet_billing.form`) and `/generate-bill/{items}/{cashier_id}` (`cafe_outlet_billing.generate_bill`)
- Both gated by `access content` only → **effectively anonymous**. `{items}` = URL-encoded JSON line items; controller sums totals and streams `application/pdf`.

**Security review:** `generateBill()` has **no meaningful access control** (`access content` = anon) and reflects fully attacker-supplied `items` (name/qty/price) and `cashier_id` from the URL into the invoice. Impact is limited: the response is a `application/pdf` generated purely from request input — there is NO server-side order/payment state, so no price-manipulation fraud against the system and no persistent mutation. Item name / cashier id are interpolated unescaped into TCPDF `writeHTML()` (HTML injection into the PDF, not browser XSS, since output is a PDF document). Minor info exposure: the anon PDF includes `system.site` name + email. Overall **D1**: missing access control + unescaped reflection into a PDF; recommend a real permission and escaping/validating line items. No high-severity finding.
