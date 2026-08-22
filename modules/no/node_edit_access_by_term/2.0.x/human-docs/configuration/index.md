# Configuration

There is no central settings screen for this module. You configure it **per taxonomy
term**: each term edit page gains a field naming the users (and/or roles) who are
allowed to edit nodes tagged with that term.

## Set the allow-list on a term

1. Go to **Structure → Taxonomy**, choose a vocabulary, and edit a term
   (`/taxonomy/term/{tid}/edit`).
2. In the term form, fill in the **users that have edit access** field with the
   people who should be allowed to edit content carrying this term.
3. Save the term. From now on, the node edit *form* for any node that references this
   term is restricted to the users/roles you listed — other users are blocked from
   the form.

Repeat for each term whose tagged content you want to scope. A node with no
restricted terms behaves normally.

## Important: this is a UI restriction, not enforced access control

Please read this before depending on the module. The restriction is applied **only**
to the node edit form. The module does **not** hook into Drupal's node access system,
so the check does not travel with the node — it only fires when someone opens that
specific form. Every other edit path bypasses it, including:

- **JSON:API `PATCH`** and **REST** updates (both ship with core and are frequently
  enabled),
- **Quick Edit** inline editing,
- **Views Bulk Operations** field modifications,
- programmatic edits, migrations, and other code.

Through any of those, a user who holds core's normal edit permission for the content
type can still change the node, regardless of the term allow‑list. Treat the term
restriction as a **convenience/UI hint**, not a security boundary. For genuinely
sensitive edit restrictions, use a proper entity‑access mechanism (a module that
implements Drupal's node access hooks), and disable or tightly control the alternate
edit channels above.
