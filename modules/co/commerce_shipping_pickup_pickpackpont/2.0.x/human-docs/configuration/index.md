# Configuration

Pick Pack Pont has no standalone settings screen. You configure it by adding a
shipping method that uses its plugin, then filling in that method's options.

## Add the Pick Pack Pont shipping method

1. Log in as a user who can administer Commerce configuration.
2. Go to **Commerce → Configuration → Shipping methods** and click **Add
   shipping method**.
3. Give it a name customers will recognise (for example "Pick Pack Pont pickup").
4. Choose the Pick Pack Pont pickup plugin.
5. Configure the standard Commerce shipping‑method fields — the stores it applies
   to, the rate/price, and any conditions.
6. Fill in any Pick Pack Pont‑specific options the plugin form presents.

## Credentials and secrets

The Pick Pack Pont integration communicates with the carrier's service to obtain
pickup points and pass along delivery data. If its configuration form asks for
**API credentials** (a key, token, or account identifier):

- Store them as **secrets**, not in committed configuration. With DDEV, save the
  value into `.ddev/.env` (for example
  `ddev dotenv set .ddev/.env --pickpackpont-api-key=<value>`, which becomes the
  `PICKPACKPONT_API_KEY` environment variable), keep `.ddev/.env` out of version
  control, and `ddev restart`. Where the module supports it, reference the value
  through a **Key** entity (Key module) using the environment provider; otherwise
  read it from `getenv()` in settings.
- Keep all carrier traffic over **HTTPS**, and rotate credentials if they leak.

Because parcel and delivery details are shared with the carrier, only send what
the integration needs.

## Save

Click **Save** to store the shipping method. The Pick Pack Pont option, with its
embedded point selector, will now appear at checkout for orders that match the
method's conditions.
