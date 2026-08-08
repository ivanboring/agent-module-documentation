<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Symfony Messenger (sm) integrates the Symfony Messenger component with Drupal, enabling message-bus-based asynchronous processing and queues.

---

Symfony Messenger is a message bus for dispatching and handling messages, including async processing over transports. This module (machine name `sm`) integrates it with Drupal, with an `sm_config` submodule. It is developer infrastructure for building message-driven, asynchronous features — an alternative to Drupal's queue API with Messenger's routing and middleware. No fixed security surface of its own; the security is in what messages carry and how handlers act (a handler runs with site privileges). Review message handlers and their transports; if a transport is external (a broker), its credentials and the message contents are the considerations.

---

- Use Symfony Messenger in Drupal.
- Dispatch messages on a bus.
- Process work asynchronously.
- Route messages to handlers.
- Use Messenger middleware.
- Configure transports.
- Secure external transport credentials.
- Review message handlers.
- Build message-driven features.
- Use as a queue alternative.
- Handle messages with services.
- Confirm handler privileges.
- Enable when needed.
- Keep disabled otherwise.
- Restrict administration.
- Confirm on your site.
- Test before production.
- Review configuration.
- Pair with related modules.
- Verify theme fit.
- Match your use case.
- Confirm compatibility.