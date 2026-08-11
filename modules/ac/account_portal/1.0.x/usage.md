<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Account Portal implements a self-service account portal for OAuth consumers.

---

Account Portal provides an account-portal implementation for OAuth, built on top of the Consumers module. It gives OAuth clients (consumers) a portal surface for account-related flows, tying Drupal accounts to registered consumers so a decoupled front end or third-party client can manage account interactions through a consistent endpoint.

Because it sits in the OAuth/consumer path, treat its endpoints as authentication-adjacent: register consumers deliberately, keep client secrets in environment/Key storage, and review which redirect targets and scopes each consumer is allowed. It requires the `consumers` contrib module.

---

- Provide an OAuth account portal.
- Build on the Consumers module.
- Tie accounts to OAuth consumers.
- Serve decoupled/third-party clients.
- Expose account flows to consumers.
- Register consumers deliberately.
- Keep client secrets in env/Key storage.
- Review allowed redirect targets.
- Review consumer scopes.
- Treat endpoints as authentication-adjacent.
- Support Drupal 10.3+ and 11.
- Requires the `consumers` module.
- Integrate with OAuth login flows.
- Give clients a consistent account endpoint.
- Manage account interactions per consumer.
- Restrict which consumers are trusted.
- Audit consumer registrations.
- Support decoupled architectures.
- Centralise account-portal logic.
- Complement a simple_oauth setup.
