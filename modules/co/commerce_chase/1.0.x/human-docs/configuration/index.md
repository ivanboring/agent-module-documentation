# Configuration

Commerce Chase is configured like any Commerce payment gateway: you add a gateway
and provide the Chase/Orbital details for your merchant account.

## Store your credentials securely

Keep any Chase API credentials out of version control. On a DDEV site, store them
in environment variables rather than pasting them into settings or exported config:

```bash
ddev dotenv set .ddev/.env --chase-merchant-id=<value>
ddev restart
```

(`.ddev/.env` must stay out of version control.) Reference secrets through a **Key**
entity where the gateway supports it. Because this account uses **IP‑based SOAP
authentication**, there is no username/password to store — but your server's public
IP must be whitelisted on the Chase side, which is effectively part of your
credentials and should be managed with the same care.

## Add the gateway

1. Go to **Commerce → Configuration → Payment gateways**
   (`/admin/commerce/config/payment-gateways`) and click **Add payment gateway**.
2. Give it a name and display label, and choose the Chase (Orbital) plugin.
3. Enter your Orbital merchant details (merchant/terminal identifiers and any
   endpoint settings your account requires). No SOAP username/password is needed
   because authentication is by whitelisted IP.
4. Choose **test/live** mode and save.

## How it works

The gateway pairs Orbital's **Hosted Payment Form** (where the customer enters card
details, keeping raw card data off your server) with Chase's **SOAP API** (which
carries out the transaction). Chase authenticates the SOAP calls by recognising
your server's whitelisted IP address.

## Safeguards to respect

- **IP whitelisting is your authentication.** Confirm with Chase that the exact
  public IP your site sends requests from is whitelisted. If your hosting changes
  IPs (or you have multiple outbound IPs), update the whitelist or SOAP calls will
  fail to authenticate.
- **Serve checkout over HTTPS** end‑to‑end.
- **Match your PCI configuration to the card‑data flow.** The hosted form keeps
  card data off your server, but you are still responsible for a PCI‑compliant
  setup around it.
- **This is alpha, minimally maintained software.** Test end‑to‑end in Chase's test
  environment, reconcile transactions against Chase's reporting, pin your version,
  and keep an eye on the project for updates before relying on it in production.
