# reference/icon/goaldi — Townsend and Proebsting on what Icon is actually made of

**Upstream:** <https://github.com/proebsting/goaldi>, `doc/diffs.adoc` and `doc/ref.adoc`, vendored 2026-09-11 by ceo on Lon's order.
**License:** Arizona Board of Regents, 2015 — permissive, **and it requires the full notice on all copies of the software *and documentation***, so `LICENSE.adoc` is vendored beside them and must stay.
**Authors:** Gregg Townsend and Todd Proebsting, University of Arizona — ⭐ the same Proebsting whose code-generation shape `ARCH-PROLOG-BYRD-BOX-TRANSLATION.md` § B cites by name ("Proebsting shape", "Proebsting's `to.I`").

## ⛔ THESE ARE REFERENCE, NOT A TEST SUITE. NOTHING GRADES THEM.

No runner, board, ladder or denominator touches this directory. It holds two documents and their licence. It is the first entry under `corpus/reference/`, a tree for vendored prose we read rather than run.

## Why they are worth having, and it is not because we are adding Goaldi

Goaldi was **assessed and declined** for the SCRIP family the same sitting (ceo, on Lon's question *"Is Goaldi a nice language we can add to the SCRIP family of GDE languages?"*). It omits **string scanning and the cset datatype** — the hinge between the SNOBOL4 half and the Icon half of our one-machine thesis — so a Goaldi frontend would exercise strictly LESS of the Byrd-box machine than Icon already does, while its new third (concurrency by message passing) fits the box model no better than FD does. Its entire corpus is 66 test programs, with no third-party code, no conformance suite and no rival implementation.

⭐ **The documents are valuable for the opposite reason to the language.** `diffs.adoc` is Icon's own implementers deciding, with twenty-five years of hindsight, **which Icon features are essential and which are incidental** — what they kept, what they dropped, and what they replaced. Their omissions list is a considered judgement by the people who built Icon, not a checklist we invented:

- dropped: string scanning + csets, arbitrary-precision integers, graphics, `loadfunc`, programmer-defined control operations (PDCO), error-conversion-to-failure
- added: message-passing concurrency, single-inheritance OOP, first-class closures, namespaces and block scoping, exception handling, dependency-ordered global initializers, structure initialisation and list comprehension, Unicode

`ref.adoc` (54 KB) is the full language reference behind those choices.

**Read them before calling SCRIP Icon done** — they are the best available answer to "what must an Icon actually cover", written by people with no incentive to flatter any particular implementation. ⛔ They are NOT normative for us: our Icon oracle is Arizona `icont`/`iconx` 9.5.25a and nothing in here changes a baseline. Where Goaldi dropped something Arizona has, **Arizona wins** — the omission tells us the feature was judged incidental by its authors, not that it is optional for us.
