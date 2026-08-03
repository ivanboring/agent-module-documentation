# TCPDF Example — agent index

Demo submodule of `tcpdf`. A permission-gated route that renders a Twig template and streams a sample
PDF, illustrating the `tcpdf_get_instance()` pattern. Depends on `tcpdf`. Learning aid, not for prod.

Key facts:
- Permission `use tcpdf example` gates both routes.
- Routes: `tcpdf_example.content` → `/tcpdf_example/content` (links to the sample);
  `tcpdf_example.download_pdf` → `/tcpdf_example/download/{example_name}` (only `simple` is valid, else
  `InvalidArgumentException`).
- `TcpPdfExampleController::generateSimplePdf()`: render theme `tcpdf_example_basic_html` →
  `tcpdf_get_instance()` → `DrupalInitialize(['footer' => …, 'header' => ['callback' => …]])` →
  `writeHTML()` → `Output(…, 'S')`, sent with PDF download headers.
- Integration API is the parent's — see
  [../../../../2.0.x/agent/api/usage.md](../../../../2.0.x/agent/api/usage.md).
