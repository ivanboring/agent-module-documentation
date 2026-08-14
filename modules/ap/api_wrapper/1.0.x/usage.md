<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Api Wrapper turns methods on any tagged Drupal service into callable HTTP routes using PHP attributes, and generates a documentation page for each wrapped API.
---
A service class annotated with `#[ApiWrap(basePath: ..., label: ..., docPath: ...)]` and methods annotated with `#[Endpoint(method, path, ...)]` are discovered at route-build time by `ApiWrapperRoutesProvider::routes()`, which reflects over the cached container definitions and registers a route per endpoint (path built from `basePath`/endpoint/parameters) plus a documentation route. The documentation controller renders each API's endpoints, methods and parameters via a themeable template.

IMPORTANT SECURITY NOTE: every generated endpoint route and every documentation route is registered with `_permission: 'access content'` (`src/Routing/ApiWrapperRoutesProvider.php`, ~lines 59 and 146). `access content` is granted to anonymous users on a standard site, so any method a developer wraps — including POST/PUT/DELETE `#[Endpoint]` methods that mutate data — becomes callable by anonymous visitors with no per-endpoint access control or CSRF protection. Consumers must add their own access checks inside the wrapped methods. Treat this as a framework that ships wide-open routes by default.
---
- Expose a service method as a GET HTTP endpoint.
- Expose a service method as a POST endpoint.
- Wrap an existing API-backed service without writing routing.yml.
- Annotate a class with `#[ApiWrap]` to register it.
- Annotate methods with `#[Endpoint]` for each operation.
- Build endpoint paths from a base path and parameters.
- Auto-generate a documentation page per wrapped API.
- Provide a custom documentation path via `docPath`.
- Override the docs template per module.
- Map method parameters to route path parameters.
- Read endpoint metadata from the State API cache.
- Prototype an internal API surface quickly.
- Document an API's endpoints, methods and parameters.
- List all wrapped APIs' documentation routes.
- Add per-method access checks inside wrapped methods (required).
- Restrict mutating endpoints yourself (default is `access content`).
- Reflect over container services to discover attributes.
- Style the documentation page with the bundled library.
- Version an internal service API through attributes.
- Share an API contract with front-end developers via docs.