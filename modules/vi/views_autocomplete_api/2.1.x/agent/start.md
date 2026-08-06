<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Views Autocomplete API (views_autocomplete_api) — agent index

Turns a **View into an autocomplete endpoint** — filters, sorts, arguments, limit and **access** all
come from the View. Version **2.1.0**. Core `^10 || ^11`.

**Access is the property to check first**, and the one bespoke autocomplete endpoints most often
get wrong: completing an unpublished page's title **discloses that title**. Using a View is what
makes access applicable — confirm it is set rather than assuming.

**Two more:** suggestions are typed **character by character**, so this endpoint gets far more
requests than a page and query cost matters much more; a **minimum query length** plus a result cap
are the standard mitigations.