<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Api Wrapper (api_wrapper) — agent index

**Registers HTTP routes for any service method tagged with `#[ApiWrap]`/`#[Endpoint]`, plus an auto-generated docs page.**

- **Version:** 1.0.x (1.0.1)  •  **Core:** ^9 || ^10 || ^11
- **Routes:** dynamic, via `ApiWrapperRoutesProvider::routes()` (route_callbacks); docs at `/api-wrapper/docs/{apiName}` (`access content`).
- **Attributes:** `#[ApiWrap(basePath,label,docPath)]` (class), `#[Endpoint(method,path,label,description)]` (method).
- **Controller:** `ApiWrapperDocumentationController`.  **Library:** `api_wrapper/api_wrapper.styles`.

**Security (IMPORTANT):** every generated endpoint route AND every documentation route is hardcoded to `_permission: 'access content'` in `src/Routing/ApiWrapperRoutesProvider.php` (~L59 docs, ~L146 endpoints). On a default site `access content` is granted to **anonymous**, so wrapped methods — including mutating POST/PUT/DELETE endpoints — are anonymously callable with no per-endpoint access or CSRF. Consumers MUST add access checks inside each wrapped method. See [api/attributes.md](api/attributes.md).
