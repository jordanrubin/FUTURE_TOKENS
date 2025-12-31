---
name: inductify
description: Extract non-obvious structural commonalities across multiple substantial examples. Identify latent mechanisms, shared constraint-structures, and pattern families with predictive slack rather than surface vibes.
---

# inductify

inductify extracts non-obvious structural commonalities across multiple substantial examples. It identifies latent patterns, shared mechanisms, axiological rhymes, and parallel constraint-structures. Unlike rhyme (lightweight analogy), inductify is heavy induction: decomposing each case, cross-referencing mechanisms, and stress-testing emergent generalizations. The goal is to reveal transferable structure without hallucinating spurious patterns.

**TL;DR:** inductify → derive latent structure from n≥2 examples.

It asks: "what hidden mechanisms, assumptions, values, or constraints recur across these cases—and why?" The output is predictive, falsifiable pattern-families, not vibes.

## When to use

Use inductify when:
- You have multiple substantial cases (≥2 paragraphs each)
- Surface similarity feels unsatisfying
- You want cross-case structure, principles, mechanisms
- You want a heuristic or generalization grounded in evidence
- You're noticing a rhyme but don't yet know the shape

Don't use when:
- You only have one example
- Examples are nearly identical
- You need deduction, not induction

Rule of thumb: inductify = pattern extraction + mechanism grounding + predictive slack.

## Input requirements

Inductify must judge and tag input richness.

- 1 sentence → REJECT — insufficient material for induction
- 2–3 sentences → MARGINAL — proceed with [LOW ROBUSTNESS] tag
- 2+ paragraphs → MINIMUM viable
- 2+ essays/cases → IDEAL — robust induction surface

For n=2, default robustness → fragile unless examples are unusually rich and diverse.

## Pattern domains to scan

- **Structural:** shared mechanisms, causal gears; isomorphic constraints; parallel failure modes; phase transitions and thresholds
- **Epistemic:** common assumptions; evidence-shape similarities; inference parallelism; uncertainty topology
- **Axiological:** shared values and priorities; similar optimization targets; parallel moral/goal tradeoffs
- **Behavioral:** recurring strategies; common adaptation patterns; attractor dynamics; escalation symmetries
- **Temporal:** common rhythms, cycles, origin/decay patterns; trigger → response latencies

## Signature

```
inductify(examples[], focus?) → {obvious, induced_patterns, pattern_families, confidence, next_moves}
  examples[]: list of ≥2 substantial cases
  focus: optional domain emphases (structural | epistemic | axiological | behavioral | temporal)
```

Output includes:
- Obvious similarities (acknowledged + dismissed)
- Induced patterns (ranked, mechanistic, predictive, falsifiable)
- Pattern families (clustered latent factors)
- Confidence calibration
- Recommended next moves

## Process

**Step 0: Validate input**
- Count examples and assess richness
- If insufficient, return rejection + rationale
- If marginal, proceed with [LOW ROBUSTNESS] tag

**Step 1: Surface the obvious (table stakes)**
- List shared surface features anyone would notice; tag as [surface]
- Do not promote these as induced patterns by default
- Purpose: clear cognitive space for deeper structure
- If something is obvious but profound, it may be re-promoted later only if it meets mechanism + predictive criteria (tag [plain-sight deep structure])

**Step 2: Decompose each example**
For each instance, extract:
- Mechanisms (how it works)
- Assumptions (what must be true)
- Values (what's optimized)
- Constraints (what limits action)
- Outcomes (what happened / is expected)
- Optionally integrate @excavate for deeper assumption-archaeology.

**Step 3: Cross-reference**
- Build a loose comparison matrix across examples
- Identify non-obvious overlaps and structural isomorphisms (different content, same shape)
- Identify absent commonalities (negative-space patterning): properties you'd expect to be shared but are not
- Tag candidate patterns by domain (structural / epistemic / axiological / behavioral / temporal)

**Step 4: Rank + mechanism-ground**
Score candidate patterns by:
- Non-obviousness (relative to table stakes)
- Explanatory power (how much variance they account for)
- Mechanism strength (causal / constraint / info-flow)
- Predictive slack (what they say about unseen cases)

Discard the weak; elevate the few strong. Fewer strong patterns > many weak ones.

Each promoted pattern must specify:
- What: description
- Evidence: how it appears in each example
- Mechanism: why it recurs (causal, constraint, or information-flow)
- Surprise-level: [plain-sight deep structure / non-obvious subtle]
- Predictive claim: implication for a new case
- Breaking condition: what would falsify it
- Span: [narrow / moderate / broad applicability]

Cluster patterns into pattern families where they share a latent factor (e.g., "status-protection dynamics," "coordination-friction," "exploration–exploitation tension").

**Step 5: Stress-test induction**
- Test each major pattern against a hypothetical (n+1)th example
- Explicitly ask: what would break this pattern? (boundary conditions)
- Perform a base-rate sanity check: is this relationship actually unusual in the domain?
- Actively search for counter-patterns with comparable effort
- Tag any pattern with weak gears as [MECHANISM UNKNOWN] or downgrade robustness

## Output format

```
## obvious similarities (acknowledged + set aside)
- [surface 1]
- [surface 2]

## induced patterns (ranked by leverage)

### 1. [pattern name]
- what: ...
- evidence: ...
- mechanism: ...
- surprise-level: [plain-sight deep structure / non-obvious subtle]
- predictive claim: ...
- breaking condition: ...
- span: [narrow / moderate / broad]

### 2. [pattern 2]
...

## pattern families
- [family name]: [brief description of shared latent factor + member patterns]

## confidence calibration
- input richness: [sparse / adequate / rich]
- robustness: [fragile / moderate / strong]
- spurious-risk: [high / medium / low]
- meta-risk: [selection bias / narrative smoothing / anthropic filtering]

## suggested next moves
- test strongest pattern(s) on a new case
- @stressify the highest-leverage induction
- @operationalize any pattern that you want to turn into a heuristic
- gather targeted evidence to confirm/disconfirm edge cases
```

## Quality criteria

- Input validated: ≥2 substantial examples, richness tagged
- Obvious similarities surfaced and explicitly excluded from induced patterns by default
- Non-obvious patterns prioritized; count kept small and strong
- Mechanisms explicit and plausible (or tagged [MECHANISM UNKNOWN])
- Predictions + falsifiers specified for each major pattern
- Pattern families identified where latent factors exist
- Base-rate sanity check performed (is this pattern actually interesting?)
- Negative space considered (what's conspicuously not shared)
- Calibrated confidence including meta-risks

## Anti-patterns

- **Shallow reformulation:** pattern merely rephrases the surface similarity
- **Overfitting to n=2:** pattern is perfectly tailored but has no predictive slack
- **Mechanism-free mysticism:** "deep pattern" with no gears; must be tagged [MECHANISM UNKNOWN] or discarded
- **Galaxy-brain pareidolia:** connections too subtle to be real; base-rates + counterexamples disagree
- **Confirmation bias:** pattern suspiciously aligned with prior belief; no serious search for alternatives

## Integration with other ops

- **Upstream:** @framestorm → generate candidate lenses before pattern-search; @excavate → prep each example's assumption stack
- **Downstream:** @operationalize → convert robust pattern → actionable heuristic or rule-of-thumb; @stressify → adversarially test the most important inductions
- **Parallel:** @rhyme → lightweight analogical patterning (lower effort, lower rigor); @metaphorize → single-source mapping (one example to a new domain), versus multi-source induction

## Meta-note

inductify = structured induction + mechanistic grounding + negative-space awareness + calibrated scope. Its job is not to generate pretty generalizations; it's to extract robust, falsifiable structure from messy particulars and make clear where you're extrapolating vs guessing.

