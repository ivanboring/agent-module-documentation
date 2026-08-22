# Configuration

Datatrans is configured like any Drupal Commerce payment gateway. The most
important thing to get right is the **`sign2` signing key**, because that is what
makes the security‑critical webhook verification active.

## Store your signing keys safely

Your Datatrans **signing keys** (including `sign2`) are credentials — keep them out
of plain configuration. Store them in environment variables and reference them
through **Key** entities.

With DDEV, set a key and restart so the container picks it up:

```bash
ddev dotenv set .ddev/.env --datatrans-sign2=<value>
ddev restart
```

Then enable the **Key** module and create a Key that reads the environment
variable:

```bash
ddev composer require drupal/key
ddev drush en key -y
ddev drush key:save datatrans_sign2 --label='Datatrans sign2 key' \
  --key-type=authentication --key-provider=env \
  --key-provider-settings='{"env_variable":"DATATRANS_SIGN2","base64_encoded":false,"strip_line_breaks":true}' \
  --key-input=none -y
```

Never commit `.ddev/.env` to version control.

## Add the payment gateway

1. Go to **Commerce → Configuration → Payment gateways**
   (`/admin/commerce/config/payment-gateways`) and click **Add payment gateway**.
2. Give it a **Name** and choose the **Datatrans** plugin.
3. Enter your Datatrans **merchant ID** and **both signing keys**. Be sure to set
   the **`sign2`** key — without it the webhook returns `403` and cannot confirm
   payments (see the security notes below).
4. Choose the **mode** — use Datatrans **test** credentials while integrating and
   switch to **production** only after a successful end‑to‑end test.
5. Enable the gateway and save.

Make sure a **payment method** exists in Commerce (**Store → Configuration →
Payment methods**) so the gateway is offered at checkout.

## Test before you go live

Datatrans provides test credentials. Run a full purchase — the redirect, the
browser return, and the asynchronous webhook — and use the module's logging to
confirm the notification was received and verified before switching to production.

## Security notes

The module's review notes record the following, so you know where the integration
stands:

- **The webhook fails closed.** The notification handler requires the `sign2` key
  (returns `403` if it is missing), reads the `Datatrans-Signature` header,
  recomputes the HMAC over the request body, and **rejects** the request if the
  header is absent or the signature does not match. Only then does it process the
  payment, and only for whitelisted statuses (`settled`, `transmitted`,
  `authorized`).
- **Why that matters:** a forged notification cannot mark an order paid, because it
  cannot produce a valid HMAC without your `sign2` secret. This is the correct
  posture — but it depends on you actually configuring `sign2`. If you leave it
  unset, the webhook is inactive.
- **Minor, low severity:** the signature comparison uses PHP `==` rather than the
  constant‑time `hash_equals()`. This is a theoretical timing side‑channel that is
  impractical to exploit over the network. Keeping `sign2` secret (as above) is the
  meaningful protection.
