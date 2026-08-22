# Configuration

Drupacle is configured by creating one or more **Oracle connections**. Each
connection stores the details needed to reach an Oracle database and is given a
short‑code you then reference from your code.

## Open the connection manager

1. Log in as a user who holds the Drupacle administration permission (an
   administrator by default). Keep this permission restricted to trusted users —
   it controls who can define connections and run queries.
2. Go to **/admin/drupacle/connections**.

## Create a connection

Add a new connection and provide its Oracle details — typically the host, port,
service name / SID, username, and password (the exact fields depend on your Oracle
setup). Save it, and Drupalce makes an "Oracle database object" available via a
short‑code. You can create several connections to talk to multiple Oracle
databases.

Once a connection exists, copy its short‑code and use it in your PHP/module code
to run queries against that Oracle database through the OCI8 functions.

## Handle credentials safely

Oracle connection details include a password, which is a **secret**. Do not commit
credentials to exported configuration or version control. Instead:

- Store the host/user/password in **environment variables**, a **Key** entity, or
  `settings.php`, and reference them rather than hard‑coding them.
- With DDEV, save a secret into DDEV's dotenv file and restart so it is available
  in the container:

  ```bash
  ddev dotenv set .ddev/.env --oracle-password=<value>
  ddev restart
  ```

  Keep `.ddev/.env` out of version control. If the Key module fits your workflow,
  create a Key that reads the value from the environment and reference that.

## Query safely

When you build queries against Oracle, always use **parameterized queries** (bind
variables) and never concatenate user‑supplied input directly into SQL. This
avoids SQL injection into the Oracle database. Restrict the Drupacle permission so
only trusted users can create connections and run queries.
