<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Like adds a like button to entities, recording who liked what and displaying a count.

---

The like is the smallest unit of engagement a site can offer and the one with the highest completion rate, because it costs nothing: a reader who would not write a comment will press a button, and the aggregate tells an editorial team which of two hundred articles resonated in a way page views do not, since a view records arrival and a like records approval. It also gives a community a low-effort way to acknowledge each other's contributions, which is a real part of why forums and knowledge bases stay alive. Version **2.0.4** on core `^10.1 || ^11`. Three things to decide before adding one. **Anonymous liking is unmeasurable** — without an account the only identity available is a cookie or an IP address, so the count is a number that can be inflated by anyone with a script, and a site that displays it as a signal is publishing something it cannot stand behind; requiring authentication makes the number mean something and reduces it substantially, which is a trade to make deliberately. **A like is personal data about an opinion**, so who can see that a particular person liked a particular thing needs deciding — an aggregate count is one thing and a list of likers is another, and the second may be sensitive depending on what is being liked. And **counts are a caching problem**: a per-entity number that changes constantly cannot sit inside a page cached for everyone unless it is loaded separately, so the button and its count usually need to be a lazy-loaded placeholder rather than part of the rendered node.

---

- Add a like button to articles.
- Let members acknowledge a post.
- Measure which content resonates.
- Add a reaction to a comment.
- Let users like a photograph.
- Show a like count on a listing.
- Add engagement to a knowledge base.
- Let readers endorse an answer.
- Sort content by likes.
- Add a low-effort engagement signal.
- Let members appreciate a contribution.
- Show popular content in a block.
- Add likes to a community forum.
- Measure editorial performance beyond views.
- Let users like a recipe.
- Add a reaction to an event.
- Show most-liked content.
- Let members endorse a resource.
