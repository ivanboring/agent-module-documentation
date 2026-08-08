<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Webform Remote Select provides a Webform select element whose options are populated from a remote endpoint URL, fetched server-side.

---

A select whose options come from an external system — a live product list, a directory — needs to fetch them at render. Webform Remote Select provides a select element populated from a configured endpoint URL, fetched server-side by Drupal. The security consideration is server-side request forgery. The endpoint URL is a webform-element setting configured by the form builder (a trusted, webform-admin role), so a static URL is low risk — but the setting is token-enabled ('you can use tokens in this field') and the fetch has access to the submission, so if a form builder puts a token that resolves to user-submitted data into the endpoint URL, a form submitter could influence the URL the server fetches: a classic SSRF where untrusted input steers a server-side request to internal services. So the rule is: keep the endpoint URL static or admin-controlled, do not build it from user-submitted field tokens, and if dynamic behaviour is needed, allow-list the destinations. As with any server-side fetch, restrict who can build these forms.

---

- Populate a select from a remote URL.
- Fetch options from an API.
- Show a live option list.
- Use an external directory as options.
- Configure the endpoint URL.
- Keep the endpoint URL static.
- Avoid user-data tokens in the URL.
- Guard against SSRF.
- Allow-list destinations if dynamic.
- Restrict who builds these forms.
- Fetch options server-side.
- Populate a directory select.
- Treat user-derived URLs as SSRF.
- Confirm the URL source.
- Use an admin-controlled endpoint.
- Cache remote options.
- Enable when needed.
- Keep disabled otherwise.
- Restrict administration.
- Confirm on your site.
- Test before production.
- Review configuration.