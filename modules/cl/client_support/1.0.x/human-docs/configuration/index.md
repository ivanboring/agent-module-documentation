# Configuration

The main thing to configure in Client Support is **where support requests are
sent** — the email address that receives everything submitted through the form.

## Open the settings form

1. Log in as a user with the **`administer client support`** permission.
2. Open the module's settings form from its entry on the **Extend** page (use the
   *Configure* link), or from the site's configuration area.

## What you configure

- **Recipient email address** — the address that receives support requests,
  typically the developers or maintainers who look after the site. Every submission
  from the support form is emailed here, including the submitter's user name and
  email address, the URL of the page they were on, and whatever text, links, and
  attachments they added.

## Who can use the form

Access is controlled by permissions rather than by this form:

- **`access client support`** — the roles that can see and use the Support link and
  form.
- **`administer client support`** — the roles that can reach this settings form.

Because support requests can carry personal data, keep the `administer client
support` permission limited to actual support staff, and make sure the recipient
address goes to a mailbox that's monitored and appropriate for that data.

## After saving

Submit a test request as a user who has `access client support` and confirm the
configured recipient receives the email with the expected context (name, email,
originating URL, and message).
