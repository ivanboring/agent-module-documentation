# Configuration

Commerce SEPA is configured like any Drupal Commerce payment gateway — you add a
gateway entity and fill in its settings.

## Add the payment gateway

1. Go to **Commerce → Configuration → Payment gateways**
   (`/admin/commerce/config/payment-gateways`) and click **Add payment gateway**.
2. Give it a **Name** the customer will recognise (for example "SEPA direct
   debit").
3. Choose the **SEPA** plugin.

## Gateway settings

- **Creditor details** — the identity that appears on the mandate: your
  **creditor name** and **SEPA creditor identifier**. These must match the
  creditor registered with your bank, because they are printed on the mandate the
  customer signs.
- **Mandate settings** — the wording and options used when the SEPA Direct Debit
  Mandate is generated and emailed to the customer after checkout.
- **Display / payment method settings** — standard Commerce gateway options such
  as the customer-facing display label.

Because SEPA has no live/test API call at checkout (the module only records the
IBAN and mandate), there is no separate API credential to enter here — the
sensitive part is the customer's IBAN, which the module collects and validates
during checkout.

## Save

Click **Save**. Place a test order to confirm the SEPA method appears at
checkout, the IBAN field validates, and the mandate email is sent.

## Operating it safely

- **An order is not paid just because checkout finished.** SEPA settlement
  happens later through the bank. **Reconcile real settlement out of band** and
  do not treat "processing" as money received.
- The customer's **IBAN and mandate are sensitive bank data** — serve checkout
  over **HTTPS**, restrict who can view orders, and store/transmit the data
  securely.
