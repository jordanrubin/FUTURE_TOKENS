
# mnemonize (v2)
**dimensionalizing mnemonic design for aphantasia — INDEX-FIRST, DUMB-FAST hooks**

> premise: zero imagery, zero mental computation. prefer *relational* hooks (swap/run/slot), tiny chants, legal-outline numbering. major-system/phoneme pegs are demoted to an appendix; only use if you’re scaling a whole corpus.

---

## changelog (v2)
- NEW: **tier‑0: dumb fast hooks** as the default path.
- NEW: **latency‑to‑voice (LTV)** metric; hooks must be recallable in ≤1.5s.
- REWEIGHT: indexability and relational salience ↑; phoneme pegs ↓.
- FLOW: selection order now prioritizes swap/run/slot before any pegs.
- APPENDIX: major-system digits moved to the end as optional, precompiled only.

---

## problem spec (fill before building)
- **target type**: {unordered | ordered | key↔value | digits | procedure}
- **directionality**: {cue→target | target→cue | bidirectional}
- **fidelity**: {gist | exact wording | exact order | exact digits}
- **volume**: n items; chunk size (3–5 ideal)
- **horizon**: {minutes | hours | days | months}; review budget
- **context**: {desk | walking | stress | social | timed}
- **interference**: near-duplicates present? (low/med/HIGH)
- **aphantasia**: ✅ image-free
- **LTV requirement**: target ≤ **1.5s** from cue to spoken answer

---

## design axes (0–5; weight explicitly)
1) **indexability** – fast jump to item k (numbers, coordinates, outline codes)
2) **relational salience** – uses obvious relations (swap/run/slot/contrast) rather than symbol tricks
3) **structure** – explicit scaffolds (outline, grid, headers, chant meter)
4) **latency‑to‑voice (LTV)** – measured recall time under 1.5s
5) **chunking** – 3–5 groups with labeled headers
6) **redundancy** – ≥2 independent retrieval paths (e.g., swap + chant)
7) **algorithmicity** – reconstructible by simple rule (no on‑the‑fly computation)
8) **phonology (light)** – rhyme/alliteration for speed, not encoding math
9) **maintenance** – amenable to spaced testing; easy edits
10) **build cost** – time/effort to craft
11) **collision risk** – avoids clashes with other hooks

> quick fitness: **fit ≈ (index × relation × structure × LTV × redundancy × chunking) ÷ (build cost × collision)**.

---

## tier‑0: dumb fast hooks (DEFAULT)
**pattern menu (pick the first that fits in ≤30s):**
- **swap/mirror**: two near‑identicals with reversed digits/letters. _ex: the two mjs are reversed — jordan 23, johnson 32._
- **run/ladder**: monotone sequence across a small cohort. _ex: lakers: 32 magic, 33 kareem, 34 shaq → 32‑33‑34._
- **slot‑index**: use role/position/order as the number. _ex: “third in rotation? → 3x jersey decade”.*
- **contrast pair**: tie number to a minimal adjective antithesis (hot/cold, old/new) that only one member fits; chant binds number to the odd one.
- **parity/shape‑word** (verbal only): even/odd, prime/composite; short chant (“magic’s even thirty‑two”).
- **two‑beat chant**: 4–7 syllables that carry the number verbatim. _ex: “magic thirty‑two.” repeatable, instant._

> guardrail: if a hook takes >30s to coin or >1.5s to say in recall, discard and try the next pattern.

\* slot‑index is a template; define the slot mapping explicitly if used (no vibes).

---

## selection flow (don’t overthink)
1) try **swap/mirror** with a near‑twin (initials, teammates, era). if viable → ship.
2) else try **run/ladder** with a natural trio/quartet.
3) else assign a **two‑beat chant** and stop. (add parity tag if interference is high.)
4) only if 1–3 fail for the set or you need large‑N scaling, go to pegs (appendix).

---

## redundancy (image‑free)
- pair the hook with **legal‑outline** codes when lists are involved (e.g., “2.3 = constraints: magic (32)”).
- add a **checksum tag** only if drift is observed (sum digits mod 9 → a letter), but **precompile** this; never compute live.
- for families of facts, fix a **cohort header** (e.g., “lakers‑80s”) to avoid collisions.

---

## lifecycle (speed‑centric)
- **authoring**: coin the hook yourself; outsourced lines decay.
- **LTV test**: after 2m, 10m, 1d, say cue→answer aloud; must be ≤1.5s. if slower, simplify.
- **spacing**: 10m, 1d, 3d, 8d; then double. keep tests free‑recall, not multiple choice.
- **stress rep**: one walking/timed recall.
- **garbage collection**: if hooks collide, change the relation (swap→ladder, or add cohort header).

---

## default recipes (v2)
**tiny fact (name ↔ number)**  
- pick **swap** or **ladder** relative to a near‑twin; else use **two‑beat chant**.  
- add one **cohort header** if interference is high.  
- test LTV.

**ordered 10–40 (index‑heavy)**  
- scaffold: **grid 4×10**; headers per row.  
- inside each row, prefer **runs** over pegs; if numbers are arbitrary, use **two‑beat chant per item** with legal‑outline codes.  
- add redundancy via a 1‑line **row chant** naming the range.

**procedures**  
- 3 columns {pre | run | fail‑safes}.  
- number each step; author a **row chant** and rely on **outline codes** for index jumps.

---

## worked micro‑examples (v2, non‑visual)
**“magic johnson is number 32”**  
- **swap**: the two mjs are reversed — **jordan 23**, **johnson 32**.  
- **ladder**: lakers big‑men ladder: **32 magic**, **33 kareem**, **34 shaq**.  
- **chant** (fallback): “**magic thirty‑two**.”  
- pick one; LTV ≤1.5s.

**“mercury boiling point ≈ 357 °C” (memory for chem trivia)**  
- **ladder** within metals: “lead 1749? no.” if no clean relation, go **chant**: “**mercury three‑five‑seven**.”  
- add parity note: 3 odd / 5 odd / 7 odd → “all odd digits,” to differentiate from neighbors.

---

## metrics & gates
- **LTV target**: ≤1.5s; if >1.5s after 1d, the hook is too clever → simplify.
- **build time**: ≤30s per fact for tier‑0 hooks.
- **error rate**: <20% at 8d; else add a cohort header or swap pattern.

---

## appendix (use only if scaling a corpus)
**precompiled pegs (no live computation):**
- if you maintain a 0–9 **word peg** or a 00–99 **codebook**, compile it ONCE and print it. never “figure it out” mid‑conversation.
- permissible uses: bulk memorization (exams), long ordered lists, digits beyond 4 groups.
- if used, still enforce **LTV ≤1.5s**.

> major‑system digits (reference only): 0 s/z, 1 t/d, 2 n, 3 m, 4 r, 5 l, 6 j/sh/ch, 7 k/g, 8 f/v, 9 p/b.

---

## tiny template (copy/paste)
```
spec:
  type: single fact or small set
  direction: bidirectional
  horizon/context: social recall
  interference: high

design:
  tier-0 hook: swap | ladder | chant
  redundancy: cohort header (optional)
  outline code: if part of a list

tests:
  LTV ≤1.5s at 10m, 1d
  spacing: 10m, 1d, 3d, 8d
```
