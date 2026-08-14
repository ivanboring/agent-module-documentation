<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Error prepend string surfaces PHP's `error_prepend_string` and `error_append_string` ini directives inside a Drupal response, wrapping the rendered content with those configured strings.
---
A single response event subscriber reads `ini_get('error_prepend_string')` and `ini_get('error_append_string')` and concatenates them around the response body. The intent is to let a site reuse markup/branding defined at the PHP ini level (for example a maintenance or error wrapper) on Drupal-served responses, since Drupal's own output pipeline normally bypasses those directives.

Because the wrapping strings come from PHP ini (server configuration), not from user input, there is no request-controlled injection here; the content added is whatever the server operator set. Note the subscriber's status-code guard is written as `!$response->getStatusCode() == 500`, whose PHP operator precedence makes the guard effectively always true, so the prefix/suffix are applied broadly rather than only outside 500 responses — worth verifying against your intent before relying on it. Set the ini values via php.ini, .htaccess, or a settings.php `ini_set()`.
---
- Reuse a server-defined error/branding wrapper on Drupal pages
- Prepend fixed markup to responses from php.ini
- Append a footer string defined at the ini level
- Keep error-wrapper markup consistent with non-Drupal endpoints
- Apply error_prepend_string without patching PHP output
- Add a maintenance banner defined in server config
- Inject a compliance notice from an ini directive
- Centralise wrapper markup in server configuration
- Bridge legacy ini-based error styling into Drupal
- Set the strings via settings.php ini_set()
- Configure the directives through .htaccess
- Wrap responses with operator-controlled prefix/suffix
- Provide a global HTML wrapper without a theme change
- Verify the status-code guard behaviour before production use
- Add a debug marker to responses in a controlled environment
- Standardise output framing across mixed PHP/Drupal apps
