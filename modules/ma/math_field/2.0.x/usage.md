<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Math Field is a field formatter that reads a text field containing an arithmetic expression and renders the computed result, using a small hand-written lexer and parser.

---

The premise is narrow and the README is admirably honest about the boundaries. It supports `+`, `-`, `*` and `/`, handles parentheses and decimals, and — stated explicitly — **cannot handle negative numbers or unary operations**. So `(2 + 3) * 4.5` evaluates; `-5 + 3` does not.

The implementation choice behind that is worth appreciating. Evaluating user-supplied arithmetic is a place where the lazy answer is `eval()`, and reaching for it turns a display formatter into remote code execution. This module writes a lexer and a parser instead, exposed as a service, so the only things it can compute are the operations it implements. The restricted grammar is the security property, not a shortcoming — a parser that only knows four operators cannot be made to do anything else.

Errors are displayed inline in the rendered output rather than thrown, which is a reasonable default for a formatter but means a malformed expression becomes visible to site visitors. Worth checking on a public-facing display.

Two things to know before adopting: the field stores the *expression*, not the result, so the value recomputes on every render and cannot be sorted or filtered on in Views. And the module's package is declared as `custom`, so it will appear under that heading on the Extend page rather than somewhere obvious.

---

- Display the result of an arithmetic expression.
- Add, subtract, multiply and divide field values.
- Handle parentheses in an expression.
- Handle decimal numbers.
- Compute a total for display.
- Avoid eval() when evaluating user input.
- Expose the parser as a service to custom code.
- Show errors inline for malformed expressions.
- Check error display on public-facing views.
- Store an expression rather than a result.
- Accept that results cannot be sorted in Views.
- Accept that negative numbers are unsupported.
- Accept that unary operations are unsupported.
- Look under the "custom" package on Extend.
- Keep the computation grammar deliberately small.
- Use a text field as the expression source.