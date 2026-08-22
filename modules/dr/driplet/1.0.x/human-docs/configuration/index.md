# Configuration

Driplet's configuration ties three things together: the **JWT signing secret**
that authenticates users to the microservice, the **connection details** for the
running Driplet microservice, and the topics/targets you use when you push
messages from code.

## Set a strong JWT signing secret

When a user connects, Drupal issues them a JWT (from the `/api/driplet/jwt`
endpoint) that encodes their user ID and roles; the Driplet microservice trusts
that token to identify the user and decide which messages reach them. The token
is signed with a secret stored in configuration (`driplet_jwt_secret`). **If that
secret leaks or is weak, anyone can forge a token and impersonate any user**, so
treat it as a real credential.

Store it in an environment variable rather than in committed or exported
configuration:

```bash
ddev dotenv set .ddev/.env --driplet-jwt-secret=<a-long-random-string>
ddev restart
```

The flag `--driplet-jwt-secret` becomes the variable `DRIPLET_JWT_SECRET` inside
the web container. Confirm it's set **without printing it**:

```bash
ddev exec 'test -n "$DRIPLET_JWT_SECRET"'   # exit status 0 means it is set
```

Then reference that variable when you set the secret — for example through a
**Key** entity (env provider), or from `settings.php` via
`getenv('DRIPLET_JWT_SECRET')` — instead of pasting the raw value into the
settings form. Make sure the **same secret** is configured on both Drupal and the
Driplet microservice, or token verification will fail.

## Point Drupal at the microservice

On Driplet's settings form (under **Configuration**), set the connection details
for your running Driplet microservice so the module knows where to push messages
and where the frontend client should open its WebSocket connection. These values
must match how you configured the microservice (see the module's `README.md`).

## Targeting messages (from code)

When you send a message through the `driplet.service` PHP service you choose:

- a **topic** — a label that groups related messages; frontend clients subscribe
  to the topics relevant to the page they're viewing, and receive only those;
- a **target** — who should receive it: specific user IDs, one or more roles, or a
  combination. The targeting can also be **inverted** to specify exclusion
  criteria (everyone *except* a given set).

This targeting is expressed in code rather than on an admin form; the
`driplet_notify` submodule is a working example to copy from.
