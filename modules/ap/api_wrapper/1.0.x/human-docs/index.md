# Api Wrapper — manual setup guide

**Api Wrapper** (`api_wrapper`) is a developer tool that turns methods on your
Drupal services into HTTP endpoints without you writing a `routing.yml`. You
annotate a service class with a `#[ApiWrap]` PHP attribute and each method you
want exposed with an `#[Endpoint]` attribute; the module reflects over your
services at route-build time and registers a route for every endpoint, plus an
auto-generated documentation page describing each API's endpoints, methods and
parameters.

It is meant for quickly prototyping an internal API surface or sharing an API
contract with front-end developers via the generated docs. There is no settings
page — everything is driven by the attributes you place in your code.

**Important security warning — read before enabling.** Every route this module
generates (both the endpoints *and* the documentation pages) is hardcoded to
require only the `access content` permission. On a standard Drupal site
`access content` is granted to **anonymous** users, so any method you wrap —
*including* `POST`/`PUT`/`DELETE` methods that change data — becomes callable by
anyone on the internet, with no per-endpoint access check and no CSRF protection.
The module does **not** gate endpoints for you. If you use it, you must enforce
access **inside** each wrapped method (check the current user, entity access,
validate a token, verify CSRF). Treat this as a framework that ships wide-open
routes by default, and think twice before exposing any mutating method through it
on a public site.

This guide is written for a **human** setting the module up. If you want terse,
token-cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install with Composer and enable the
   module.

## How to use it

Annotate a registered service class and its methods:

```php
use Drupal\api_wrapper\Attribute\ApiWrap;
use Drupal\api_wrapper\Attribute\Endpoint;

#[ApiWrap(basePath: '/my-api', label: 'My API', docPath: '/my-api/docs')]
class MyApiService {
  #[Endpoint(method: 'GET', path: 'items', label: 'List items')]
  public function list(): array { /* ... */ }
}
```

The class must be a registered service. Routes appear at
`/{basePath}/{endpoint}`, and the generated documentation for each API renders at
its `docPath` (or `/api-wrapper/docs/{apiName}`). Method parameters become route
path parameters. Add your own access checks inside every method — see the security
warning above. The documentation template can be overridden per module if you want
to restyle it.
