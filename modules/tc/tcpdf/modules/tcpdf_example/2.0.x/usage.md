Demonstration submodule for the TCPDF module: a permission-gated route that renders a Twig template to HTML and streams it back as a downloadable sample PDF, showing the intended `tcpdf_get_instance()` + `DrupalInitialize()` integration pattern. Enable it only to learn the API, not on production.

---

`tcpdf_example` exposes two routes, both requiring the `use tcpdf example` permission: `/tcpdf_example/content` (a page linking to the sample) and `/tcpdf_example/download/{example_name}` which, for `example_name = simple`, calls `TcpPdfExampleController::generateSimplePdf()`. That method renders the `tcpdf_example_basic_html` theme template to HTML, obtains a wrapper instance via `tcpdf_get_instance()`, initializes it with `DrupalInitialize()` (setting an HTML footer and a header callback), writes the HTML, and returns the binary, sending `Content-Type: application/pdf` + `Content-Disposition: attachment` download headers. Any other `example_name` throws `InvalidArgumentException`. It is purely illustrative — copy the controller as a template for your own PDF endpoints. No config, plugins, or services of its own.

---

- See a working end-to-end example of generating a PDF with the TCPDF module.
- Copy the controller pattern for streaming a generated PDF as a browser download.
- Learn how to render a Twig template to HTML and feed it to `writeHTML()`.
- See how `DrupalInitialize()` sets a header callback and an HTML footer.
- Verify the TCPDF library is installed and working after setup.
- Provide a quick smoke-test PDF download behind a permission.
- Reference the correct `Content-Type` / `Content-Disposition` headers for PDF downloads.
- Demonstrate routing/permission wiring for a PDF-generating endpoint.
- Onboard developers to the module's intended usage without reading the library source.
- Use as scaffolding to build a real "Download as PDF" feature.
- Confirm the temporary TCPDF cache directory is writable in a new environment.
- Test that a header callback and HTML footer render as expected before writing your own.
- Restrict PDF-generation demos to trusted users via the `use tcpdf example` permission.
- Show how invalid input is rejected (non-`simple` example names throw an exception).
- Serve as a copy-paste starting point for streaming binary responses from a controller.
