# Configuration

Contact Mail adds a settings form for controlling common recipients and the
formatting of contact-form emails.

## Open the settings form

1. Log in as a user with permission to administer site configuration (an
   administrator by default).
2. Go to **Extend** (`/admin/modules`), find **Contact Mail** in the list, and
   follow its **Configure** link. (Internally this is the `synmail.config` route.)

## Set common recipients

The core purpose of the form is to let you set **common recipients** for contact
forms — the email addresses that should receive contact submissions — in one place,
rather than configuring them separately on each contact form. Enter the recipient
address(es) you want to apply and save.

## Shape the email formatting

The form also lets you adjust how contact-form emails are **formatted** — the
structure of the outgoing message. Configure the formatting to suit how you want
those notifications to read.

## A note on submitter data

Contact-form emails carry the submitter's message and, frequently, their email
address. When you set recipients and formatting, keep in mind who will receive that
information and make sure it's routed only to the people who should see it.

## Save

Click **Save configuration**. Your changes apply to contact-form mail sent from
then on — submit a test contact form to confirm the recipients and formatting
behave as you expect.
