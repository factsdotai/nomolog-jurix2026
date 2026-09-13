# Reference encodings for the exception passages

All twenty passages are encoded, and all 114 cases pass. The selection
is in `data/e2_exception_slice.csv`, and
`../exception-slice-protocol.md` records how we made it.

We reconstructed the sentences here from fragmented lines of raw text,
using about six lines of source context on either side. Each
`sentence.txt` holds the reconstruction, the original marker line, and
the source location. Reconstructing a sentence involves choices, so the
reconstructions should be checked against the source documents.

## Encoding conventions

The reference encodings follow five readings. The paper's Section 2
states the first two, and this file records the rest.

1. **An exception to the whole provision is a defeat**, in 16 of the 20.
   The exception becomes a superior defeasible rule, with a conflict
   declaration and a priority. The single sentences never needed that
   machinery.
2. **An exception that restricts the domain is a guard**, in cand18,
   cand43, and cand77. When "except" narrows the set of objects rather
   than the provision, as in "all parking spaces except...", the
   exception has to apply object by object, so it belongs in the rule
   body.
3. **A scope defeat** covers cand27, cand31, and cand75, where "does not
   apply" defeats both answers and the case comes out not covered and
   not in violation. cand27 nests an exception to the exception inside
   the guard, and cand75's exception has a universal condition.
4. **A rebuttable default value** covers cand37, where an assumed 40mm
   is a defeasible conclusion that a justified assessment defeats, and
   the strict rules use whichever assumption stands.
5. **An asymmetric excuse** covers cand8 and cand32, where the exception
   excuses only one end of a range. The encoding points the priority at
   one rule.

## A limit of propositional defeat

Defeat that cannot see individual objects cannot excuse one of them. If
`exempt` defeats `violation`, it defeats it for the whole case, so a
case with one excused object and one object in breach would wrongly
pass. Where that mattered, in cand18 and cand43, the encoding uses a
guard instead. Where the exception really covers the whole provision,
the case suites use a single object, so the defeat encoding never has to
excuse one object among several. Each encoding notes which of the two it
uses.

cand76 added pounds sterling, the published currency, to the unit table.
