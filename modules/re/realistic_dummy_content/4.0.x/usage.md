<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Realistic Dummy Content generates demo content that looks like real content — using supplied images and text templates rather than the lorem-ipsum-and-grey-boxes that core's Devel Generate produces.

---

The difference matters more than it sounds. A design reviewed against `Bfjkl Qwerty Xzcv` and a grey placeholder is a design nobody has actually seen: real headlines are longer than the mock, real photographs are the wrong aspect ratio, real names break the column, and every one of those is discovered after launch when the content arrives. Generating plausible content instead — proper sentences, images of the right shape, names of realistic length — surfaces those problems while they are still cheap. It also makes a demo persuasive: a stakeholder shown a site full of placeholder text is being asked to imagine the product, and one shown plausible content is looking at it. The module reads from a directory structure of images and text you supply, so the content resembles *this* site's content rather than generic filler, with a `realistic_dummy_content_api` submodule providing the mechanism. Version **4.0.0-beta1** on core `^10 || ^11`, in the Development package and tagged `developer`. **Its own description says "Do not enable on production sites", and that is the operative instruction**: a content generator on a live site is one mistaken command away from thousands of entities that then have to be identified and removed, and content-generation modules are a standing item on any inherited-site audit for exactly that reason. Keep it in `require-dev` so it cannot be enabled where it does not belong, and pair it with a way to remove what it created.

---

- Generate realistic demo content.
- Review a design with plausible text.
- Populate a site for a stakeholder demo.
- Test layouts with real-length headlines.
- Generate content with proper images.
- Fill a site for user testing.
- Test a view with realistic data.
- Check a design against long names.
- Populate a development environment.
- Generate content for a training site.
- Test pagination with volume.
- Check responsive layouts with real images.
- Prepare a sales demonstration.
- Test search with meaningful text.
- Generate content matching a site's domain.
- Populate a prototype.
- Test performance with content volume.
- Generate fixtures for manual testing.
