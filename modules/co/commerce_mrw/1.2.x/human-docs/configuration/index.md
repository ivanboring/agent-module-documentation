# Configuration

Commerce MRW is configured as a **shipping method**. You create one shipping
method that uses the MRW plugin, enter your SAGEC credentials, choose a service and
set a rate. There is no separate global settings page.

## Store your SAGEC credentials securely

MRW gives you a username and password for the PRE (test) and PRO (production)
environments. Treat these as secrets: never hard‑code or commit them. With DDEV
you can keep each value in an environment variable and load it through a Key
entity:

```bash
ddev dotenv set .ddev/.env --mrw-pro-password=<value>
ddev restart
```

Then reference the variable from a Key entity (install the Key module first if it
isn't enabled) so the credential never lives in exported configuration.

## Create the MRW shipping method

1. Log in as a user who can administer Commerce shipping.
2. Go to **Commerce → Configuration → Shipping methods**
   (`/admin/commerce/shipping-methods`) and click **Add shipping method**.
3. Choose the **MRW** plugin.

## Fields on the MRW shipping method

- **SAGEC credentials** — your franchise code, client code, optional department
  code, and the username/password pair. The form keeps the **PRE (test)** and
  **PRO (production)** credentials separate.
- **Test mode (PRE)** — a toggle that decides which environment requests go to.
  Keep this **enabled** until MRW has validated your integration, then switch it
  off to go live against PRO.
- **Service code** — the SAGEC service to ship with (for example *Ecommerce*,
  *Urgente 19* for Portugal, or any other code from the SAGEC catalogue).
- **Rate** — the flat shipping amount charged to the customer for this method.
- **Public tracking URL pattern** — the pattern used to build the customer-facing
  tracking link shown on the shipment.

## Save and test

Save the shipping method. Place a test order that uses it, then open the resulting
shipment in the back office:

- Use **Transmit** (*TransmEnvio*) to send the shipment to MRW; the returned MRW
  shipment number is stored as the tracking code.
- **Download label** streams the transport label PDF from SAGEC on demand.
- **Track** queries MRW's TrackingServices for the latest status or full history.
- **Cancel** withdraws a transmitted shipment.

You can also transmit shipments whose shipping method is *not* MRW: eligible
methods get a "Transmit as" selector, and the method that actually executed is
recorded on the shipment.

## A note on data sent to MRW

Transmitting a shipment sends the consignee's details (name, address, phone, and
optionally NIF, cash-on-delivery and insurance data) to MRW's SAGEC service over
its web API. This is the personal data MRW needs to deliver the parcel — make sure
your privacy notices cover sharing it with the carrier. If you need to adjust what
is sent, subscribe to the module's event that fires before the TransmEnvio request
leaves your site.
