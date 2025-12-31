---
name: rhetoricize
description: extract rhetorical skeleton + fact ledger, then map the "spin-space" around an argument by applying controlled connotation and syntax transforms across multiple passes. ranks variants by rhetorical surprise and surfaces the hidden fulcrum words and grammatical moves that do the persuasive work. diagnostic, not generative.
---
## tl;dr

rhetoricize answers: "how much of this argument lands because of framing and word-choice, not facts?"

it (1) extracts thesis + evidence, (2) writes a fact ledger (invariants + non-claims), (3) perturbs connotation and agency grammar across several passes, then (4) reports the highest-surprise transformation and the single (or few) choices that pivot persuasion.

it's basically local robustness testing for rhetoric: "same facts, different drip."

---

## definition

a rhetorical skeleton is:
	•	epistemic posture: confident / cautious / conditional / mixed
	•	thesis: one-sentence core claim or recommendation
	•	evidence: 2–5 supporting claims (max)

a fact ledger is:
	•	facts: atomic commitments (what is asserted)
	•	non-claims: what is explicitly not asserted / not supported
	•	drift budget: how allergic we are to semantic drift

a phrase has connotative load if near-synonyms exist with similar denotation but different affect, agency assignment, or moral valence.

a fulcrum is the single word/phrase or syntactic choice (passive voice, agent suppression, modality) that, when flipped, most changes how the argument lands while staying ledger-consistent.

---

## dimensionalization: the dials (final set)

rhetoricize has six dials. they're intentionally orthogonal.

### dial 1: pass set

what: which transforms to run
range: minimal → full suite

available passes:
	•	a same stance, opposite valence or axis framing
	•	b1 inverted evaluation, same facts (strict)
	•	b2 inverted evaluation + flagged implicatures (loose)
	•	c neutral register (de-spin baseline)
	•	s satire bound (optional bracket; explicitly non-epistemic)

default: [a, b1, c] (b2 and s are opt-in)

failure modes:
	•	too few passes → miss the actual degrees of freedom
	•	too many passes → output bloat; you stop reading (skill issue, but still)

---

### dial 2: intensity

what: how far to push lexical connotation shifts
range: subtle → maximal
	•	subtle: nearest defensible synonym (visionary → ambitious)
	•	maximal: furthest defensible inverse (visionary → reckless)

failure modes:
	•	subtle → low signal, everything looks the same
	•	maximal → parody leak (unless opposition style is constrained)

---

### dial 3: drift budget

what: tolerance for meaning drift relative to the fact ledger
range: low → high

default: low

failure modes:
	•	low → false negatives (you reject useful reframes bc language is leaky)
	•	high → "conjugate" quietly becomes "invent"

---

### dial 4: transform scope

what: what kinds of perturbations are allowed
range: lexical-only → lexical+syntactic

#### lexical transforms
	•	axis-consistent synonym shifts (euphemism ↔ dysphemism)
	•	scalar softening/hardening (some ↔ many; friction ↔ failure)

#### syntactic transforms (often the real boss fight)
	•	agency transfer (active ↔ passive; agent suppression; patient foregrounding)
	•	responsibility assignment (who did what to whom)
	•	modality shifts (must/should/can; inevitable/optional)
	•	uncertainty framing (likely/possible; typical/worst-case)
	•	nominalization vs verbing (process-as-thing vs action)

failure modes:
	•	lexical-only → you miss the biggest persuasion pivots (grammar does crimes too)
	•	syntactic without controls → register collision / incoherence

---

### dial 5: opposition style

what: voice constraints for oppositional passes
range: steelman → charitable-skeptic → prosecutorial

default: charitable-skeptic

failure modes:
	•	prosecutorial + maximal → dunks; low epistemic value
	•	steelman everywhere → you underbound how persuasion operates in the wild

---

### dial 6: output policy

what: how much to show and how many fulcrums to surface
range: winner-only → full

settings:
	•	output: winner-only / full
	•	fulcrum_k: 1–3 (default 2)

failure modes:
	•	winner-only → you lose the map, keep only the jump-scare
	•	full without restraint → text wall; you scroll, you forget, you cope

---

## implicit parameter: context

context (domain, audience, stakes, norms) is inferred, not dialed.

rhetorical charge is context-relative:
	•	"alignment" can be live in ml safety and burned in corp strategy
	•	"optimization" can be neutral in engineering and sinister in HR

failure mode:
	•	unstated context → category errors (you flip the wrong axis)

---

## core operation

given input (text, argument, map, conversation):
	1.	attribution discipline
	•	distinguish user vs author(s) vs model
	•	outputs are possible framings, not claims about intent
	2.	extract rhetorical skeleton
	•	epistemic posture + thesis + 2–5 evidence claims
	•	discard scaffolding unless it's load-bearing
	3.	build fact ledger
	•	list atomic facts (f1, f2, …)
	•	list non-claims (n1, n2, …)
	•	set drift budget
	4.	tag charged language (vector, not scalar)
for each charged phrase, tag one or more axes:
	•	agency, competence, warmth/intent, purity/contamination, status, risk, novelty
(extendable; do not pretend it's 1d "valence")
	5.	run passes
	•	a keep stance; flip connotation or swap salient axis (agency empowerment → delegation)
	•	b1 invert evaluation using only the ledger (no new predicates)
	•	b2 allow flagged implicatures (explicitly not entailed; marked as such)
	•	c strip charge; rewrite in neutral register anchored to ledger
	•	s satire bound (see below)
	6.	score rhetorical surprise (componentized)
for each pass:
	•	affect_shift (0–5)
	•	meaning_overlap (0–1, graded vs ledger; not binary)
	•	fluency_register (0–1)
surprise = affect_shift × meaning_overlap × fluency_register
	7.	select winner + name gestalt shift
	•	winner = highest surprise among ledger-compliant passes (given drift budget)
	•	produce one-sentence gestalt shift
	•	surface fulcrum_k highest-leverage choices (lexical and/or syntactic)
	8.	optional: satire bound
satire is not epistemic output; it's a bracket.
	•	produce s+ boosterish caricature and s− hatchet-job caricature
	•	must remain ledger-consistent unless drift budget is high and every drift is labeled
	•	not included in surprise ranking by default (it's a safety rail, not the road)

---

## output schema (required)

### original skeleton
	•	epistemic posture: …
	•	thesis: …
	•	evidence:
	1.	…
	2.	…

### fact ledger
	•	facts:
	•	f1. …
	•	f2. …
	•	non-claims:
	•	n1. …
	•	drift budget: low | medium | high

### charged terms (vector tags)

for each:
	•	phrase: "..."
	•	axes: [ … ]
	•	role: thesis | evidence-#

### passes

for each pass included:

#### pass a: same stance, opposite valence or axis framing
	•	thesis: …
	•	evidence:
	1.	original: "..."
transformed: "..."
axis_move: …
transforms: lexical | syntactic: …
	•	notes: drift checks

#### pass b1: inverted evaluation, same facts (strict)
	•	thesis: …
	•	evidence: …
	•	constraints: no new predicates; ledger-only
	•	notes: drift checks

#### pass b2: inverted evaluation + flagged implicatures (loose)
	•	thesis: …
	•	evidence: …
	•	flagged implicatures:
	•	i1. … (plausible; not entailed)
	•	notes: drift checks

#### pass c: neutral register
	•	thesis: …
	•	evidence: …
	•	notes: what was stripped

#### pass s: satire bound (optional)
	•	s+ booster caricature (clearly labeled satire)
	•	s− hatchet-job caricature (clearly labeled satire)
	•	notes: any labeled drift (if allowed)

### surprise ranking

| pass | affect_shift | overlap | fluency | surprise | notes |
|------|--------------|---------|---------|----------|-------|
| … | … | … | … | … | … |

### gestalt shift (winner)

one sentence: original emotional center → transformed emotional center

### hidden fulcrum(s)
	1.	…
	2.	…
(… up to fulcrum_k)

### null result (allowed)

if text is approximately neutral:
	•	explicitly state: no rhetorical degrees of freedom detected
	•	why: low charge, high ledger redundancy, or already technical register

---

## critical constraints
	•	no attribution leakage: outputs are model-generated framings, not author intent
	•	no fact smuggling: b1 must not add predicates; b2 must flag implicatures
	•	no forced inverses: if no clean inverse, say so; do axis-swap or neutralize
	•	register integrity: each pass keeps a consistent voice
	•	satire is labeled: satire is for bounding + fun, not for belief

---

## common failure modes
	•	denotation drift: flips add/remove facts
fix: tighten ledger; lower drift budget; prefer b1
	•	implicature smuggling: b2 behavior leaks into b1/a
fix: enforce b1 strictness; require explicit "flagged implicatures" section
	•	axis collapse: treating rhetoric as a 1d valence slider
fix: tag axes; report axis_move explicitly
	•	passive-voice laundering: responsibility disappears ("mistakes were made")
fix: include syntactic transforms; flag agency suppression as a fulcrum candidate
	•	parody leak: outputs become dunks
fix: opposition style = charitable-skeptic; reduce intensity; keep b2 optional
	•	trivial output: neutral sources yield near-identical passes
fix: declare low signal and stop

---

## relationship to other moves

### upstream
	•	filterize: pre-select charged phrases / likely fulcrums
	•	excavate: surface assumptions the rhetoric is protecting
	•	deframe: map the frame before perturbing its language

### downstream
	•	antithesize: use b1/b2 as seed for full opposing world construction
	•	synthesize: merge spin-robust framings into a stable articulation
	•	handlize: after rhetoricize, extract what (if anything) is executable residue

### parallel
	•	rhyme: structure detection; rhetoricize is affect/agency perturbation
	•	deframe: logic constraints; rhetoricize is diction + grammar constraints

---

## meta-note

most persuasion is just gradient descent on "what vibe makes this feel inevitable." rhetoricize is you peeking at the gradients.

satire exists bc sometimes the cleanest way to see the boundary is to tap it with a clown hammer.

