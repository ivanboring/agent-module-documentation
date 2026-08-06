<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Views Autocomplete API turns a View into an autocomplete endpoint, so suggestions come from a configured query.

---

Autocomplete endpoints are usually written per feature: a controller, a query, a JSON response, a permission check. Each one is small and they accumulate, and each has its own idea of how many results to return and whether access applies.

Defining the endpoint as a View makes it configuration. Filters, sorts, arguments, the result limit and — importantly — access all come from the View, so the endpoint behaves like the rest of the site rather than like whatever the developer wrote that afternoon.

**Access is the property to check first, and it is the one bespoke endpoints most often get wrong.** An autocomplete over unpublished content, or over user names, leaks the existence of things by returning them as suggestions — a search box that completes a private page's title has disclosed that title. Because the endpoint is a View, the View's access settings apply, which is exactly why doing it this way is better; confirm they are set rather than assuming.

Two further points: **suggestions are typed character by character**, so an autocomplete endpoint receives far more requests than a page and its query cost matters much more than a listing's; and a minimum query length plus a result cap are the standard mitigations.

---

- Create an autocomplete endpoint from a View.
- Return suggestions from a configured query.
- Apply Views access to suggestions.
- Avoid writing a controller per autocomplete.
- Filter suggestions with Views filters.
- Limit the number of suggestions.
- Set a minimum query length.
- Avoid completing unpublished content titles.
- Avoid disclosing private page titles.
- Check the endpoint's access settings.
- Consider query cost per keystroke.
- Cache autocomplete results.
- Build a typeahead for a custom field.
- Audit autocomplete endpoints on a site.
- Document this module's behaviour for the team.
- Review it during a site audit.
- Verify its assumptions after an upgrade.
