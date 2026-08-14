<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Greeting Cards (greeting_cards) — agent index
**Visitor uploads → merged PDF + thumbnail → `greeting_cards` node → e-mailed to a recipient.**

- **Version:** 1.0.x (dev-1.0.x checkout; project machine name `greeting_cards`, composer `drupal/cards`)
- **Core:** ^9.5 || ^10 || ^11
- **Depends:** entity_reference_revisions; libs: manager_assets, manager_card
- **External:** `mpdf/mpdf` (PDF), ImageMagick `convert` (thumbnails)
- **Routes (all `_permission: access content`):** `/printable-cards`, `/greeting-card-search`, `/greeting-cards/e-cards` (form), `/greeting-cards/e-cards/friends`, `/greeting-cards/e-cards/card/{nid}`, `/greeting-cards/e-cards/send`
- **Requires content model:** `greeting_cards` node type with `field_pdf`, `field_thumbnail_image`, `field_category`; `card_categories` vocabulary

**Security (report — flagged for review):** every route is gated only by `access content` (effectively anonymous by default) while performing mutations and unchecked entity loads:
- `EcardForm` creates nodes (`EcardForm.php:420` `nodeStorage->create()`) bypassing `create greeting_cards content`, and stores a user-supplied recipient e-mail in session (`EcardForm.php:260`); `SendCardsFriends::sendingEmails`/`sendMail` then e-mail that arbitrary address (`SendCardsFriends.php:139,157,203-213`) → unauthenticated mail-to-arbitrary-recipient (spam-relay) + node creation.
- `SendCardsFriends::cardVisited` (`/card/{nid}`) and `card()` load any node by id with no access/bundle check (`SendCardsFriends.php:275,332`) → IDOR / disclosure of arbitrary (incl. unpublished) node title, created time, PDF and image URLs.
- The HTML mail body interpolates unescaped session values (sender name/relation/occasion) and the card image/title (`SendCardsFriends.php:228,233`) → HTML/content injection in outbound e-mail.

See [configure/setup.md](configure/setup.md).
