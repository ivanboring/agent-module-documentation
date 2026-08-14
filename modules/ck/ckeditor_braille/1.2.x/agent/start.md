<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# CKEditor Braille (ckeditor_braille) — agent index

**Braille authoring for CKEditor 5**: a toolbar plugin to type Braille (letter-combo → Braille Unicode), a text-format filter for preview/output, and a practice exercise page.

**Version:** 1.2.x (1.2.0). Core: `^10.5 || ^11 || ^12`. Depends on core `ckeditor5`.

Components: CKEditor5 plugin `src/Plugin/CKEditor5Plugin/Braille.php` (declared in `ckeditor_braille.ckeditor5.yml`), filter plugin `src/Plugin/Filter/BraillePreview.php`, controller route `ckeditor_braille.exercise` at `/ckeditor-braille/exercise` (`ExerciseController`, `_permission: access content`). Mappings configured per text format. No admin config route or permissions file.

**Security:** the only route is a read-only practice/exercise page (`access content`, no mutation); the feature is a CKEditor plugin + output filter. No security findings.