# Configuration

Setting up eWeLink has two parts: giving the module your eWeLink **account
credentials** so it can reach the cloud, and deciding **who** is allowed to operate
devices. Because the module can trigger physical actions, the access side deserves as
much attention as the connection side.

## Store your eWeLink credentials securely

Your eWeLink credentials are secrets — never hardcode them in code or commit them to
version control. With DDEV, store each value as an environment variable, for example:

```bash
ddev dotenv set .ddev/.env --ewelink-email=<account-email> --ewelink-password=<account-password>
ddev restart
```

That exposes them inside the web container (here as `EWELINK_EMAIL` and
`EWELINK_PASSWORD`; keep `.ddev/.env` out of version control). Reference them from your
settings or the module's configuration via `getenv()` rather than typing the secrets
into a form that gets exported with your site config.

## Connect the account

On the module's settings form, provide the eWeLink account details it needs to
authenticate to the eWeLink cloud (account credentials and any region/endpoint the
library requires), drawing the secret values from the environment variables above. Save
the form. From then on the module can reach your devices to trigger actions and read
status.

## Gate who can operate devices

This is the most important part. Device actions are gated by permissions and a role:

1. Go to **People → Permissions** and grant **Access the Open the Door page** only to
   the roles that should be able to operate devices. Grant the **Activity** entity
   permissions equally carefully — they control who can see or manage the device
   activity log.
2. Assign the **Open the Door User** role to specific users on **People**
   (`/admin/people`). You can do this by hand, or drive it from custom code (for
   example granting/revoking the role in `hook_cron` or a user-save hook) if access
   should follow some external condition — such as a current booking.

## A note on physical safety

Because opening a door (or switching a device) has real-world consequences, keep the
permission set small and audited, review the Activity log regularly, and make sure the
credentials above are stored securely and rotated if ever exposed. Remember that every
device operation makes an outbound call to the eWeLink cloud.
