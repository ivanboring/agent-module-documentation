# Configuration

This module has no settings page of its own — you configure it through **Symfony
Mailer's transport list**.

## Add the Graph transport

1. Enable the module at **Administration → Extend** if you have not already.
2. Open Symfony Mailer's transport configuration and **add a new transport**,
   choosing the **Microsoft Graph** transport type this module provides.
3. Enter the credentials from your Azure app registration:
   - **Tenant ID**
   - **Client ID**
   - **Client secret** — reference the secret you stored as an environment
     variable / Key entity rather than pasting it in plain text.
4. Save the transport, and set it as the transport your mailer policies use so
   that outgoing mail is routed through Microsoft Graph.

## Things to know

- **Scope the app registration to a specific mailbox.** Use an application
  access policy rather than granting `Mail.Send` tenant-wide — otherwise a
  compromised site could send as anyone in the organisation.
- **Keep the client secret out of config.** Store it in an environment variable
  and surface it through a Key entity; never place it in exported configuration.
- **Official SDK, exact pin.** Mail is sent through Microsoft's official
  `microsoft/microsoft-graph` SDK pinned at `2.7.0`; moving to a newer SDK
  version requires a new release of this module.
