<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Setting up Greeting Cards

## External dependencies
- `composer require mpdf/mpdf` (PDF generation, `Plugin/PdfCreation`).
- ImageMagick `convert` on PATH — used by `greeting_cards_convert_pdf_to_image()` to make thumbnails.

## Content model (must exist)
- Node type `greeting_cards` with fields `field_pdf` (file), `field_thumbnail_image` (image),
  `field_category` (taxonomy reference).
- Taxonomy vocabulary `card_categories` for card categories.

## Routes and flow
1. `/greeting-cards/e-cards` (`EcardForm`) — collects title, sender name/relation/occasion, uploads,
   recipient e-mail, category; builds a PDF, thumbnail and node; redirects to the friends page.
2. `/greeting-cards/e-cards/friends` then `/greeting-cards/e-cards/send` — e-mails the card link
   (`hook_mail` key `greeting_cards_e_card`, HTML) to the recipient stored in `$_SESSION['sender']`.
3. `/printable-cards`, `/greeting-card-search`, `/greeting-cards/e-cards/card/{nid}` — public gallery,
   search and single-card views grouped by `card_categories`.

## Access hardening (important)
All six routes ship with only `_permission: 'access content'`, so on a default site an anonymous
visitor can create card nodes and send e-mail to any address, and can read any node by id via
`/card/{nid}`. If that is not intended, override the routes to require a stricter permission (e.g. a
custom `create greeting cards` permission and an authenticated-only gallery), add node bundle/access
checks in the controllers, and rate-limit the send route before exposing it publicly.
