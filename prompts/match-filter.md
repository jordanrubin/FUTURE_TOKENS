
title: match-filter
aka: goal-directed denoise, polarize
tier: 2
substrate: symbolic ↔ numeric (verbal-optional)
genre: evidencing / compressing

what it is

match-filter compresses a corpus to the minimal set of evidence items that most strongly move a single, fixed target y: either a decision rule (ship/not) or a single choice hypothesis (oᵢ is best). under common noise models it approximates a log-likelihood ratio: rank items by |\Delta \mathrm{LLR}(e_j; y)| and keep the top-k.
	•	mode: decision → preserve evidence that moves the decision boundary (criteria, risks, thresholds).
	•	mode: choice (with stance = pro or con, exactly one per run) → preserve evidence that discriminates for/against a specific option oᵢ.

⸻

i/o

inputs
	•	target y: decision rule or specific choice hypothesis H(oᵢ)
	•	mode: decision | choice
	•	stance (choice-mode only): pro | con
	•	corpus E: candidate evidence items (docs, metrics, testimonies)
	•	scope σ: admissible sources / time horizon / units
	•	k: evidence budget (count)
	•	ranker: estimate of |\Delta \mathrm{LLR}| per item (can be coarse: strong/med/weak; ↑/↓ sign)
	•	burden β: decision threshold (e.g., odds > 3:1), for decision-mode
	•	fidelity τ: required faithfulness to the exact wording of y (prevents straw drift)

outputs (single perspective, single run)
	•	brief (≤ k bullets): items sorted by descending |\Delta \mathrm{LLR}| with sign (↑ supports / ↓ opposes), each with source class + horizon
	•	hinges (1–3): cheapest probes/tests that would most change the posterior on y
	•	provenance log: scope σ used; items searched and excluded; timestamp

⸻

invariants
	•	one perspective per run (no “both sides” in one pass)
	•	claim frozen (fidelity τ ≥ 0.9; no paraphrase that changes content)
	•	rank by |\Delta \mathrm{LLR}|; ties broken by independence/novelty
	•	scope pre-declared; no ex-post source fishing

⸻

how it runs (~3–8 min)
	1.	frame: lock y, mode, stance (if choice), burden β (if decision), scope σ, and k.
	2.	scan & score: enumerate candidate items; tag each with rough sign (↑/↓) and strength (proxy for |\Delta \mathrm{LLR}|).
	3.	select: take top-k by |\Delta \mathrm{LLR}|; drop dominated/duplicate items (same claim, same source chain).
	4.	order & annotate: sort descending; add horizon, independence note, and any unit conversions.
	5.	hinge: list 1–3 probes with the highest expected posterior shift on y.
	6.	emit: brief + hinges + provenance log.

⸻

parameters

knob	values	effect
mode	decision / choice	boundary-moving vs option-discriminating evidence
stance	pro / con (choice-mode)	selects evidence direction for H(oᵢ)
k	3–12	compression; smaller k → higher signal density
scope σ	sources/time/units	guards cherry-pick; defines admissibility
fidelity τ	0.0–1.0 (default ≥ .9)	prevents straw drift / euphemism edits
ranker	exact LLR / coarse (strong/med/weak)	ordering reliability
independence ρ	0.0–1.0 (estimated)	down-weights correlated items/echoes
horizon h	window length	aligns evidence timing with y
burden β	odds / score threshold (decision-mode)	commits only if boundary is cleared


⸻

dimensionalization (scoring the run)
	1.	boundary sufficiency (decision-mode): does the brief alone decide against β?
• 0.0 = unclear • 0.5 = borderline • 1.0 = clears/fails decisively
	2.	discriminant power (choice-mode): does it uniquely separate oᵢ from peers?
• 0.0 = generic slogans • 0.5 = some specificity • 1.0 = crisp differentials
	3.	fidelity: exactness to y’s text/intent
• 0.0 = paraphrase drift • 0.5 = close paraphrase • 1.0 = verbatim scope-checked
	4.	stability: small corpus perturbations don’t flip sign/order
• 0.0 = flippy • 0.5 = minor reshuffle • 1.0 = invariant top-3
	5.	independence: diversity of sources/methods
• 0.0 = one choir • 0.5 = mixed but related • 1.0 = independent lines
	6.	hinge clarity: probes are concrete, cheap, high VOI
• 0.0 = hand-wavy • 0.5 = testable but pricey • 1.0 = quick, decisive tests
	7.	compression ratio: useful bits / total scanned
• 0.0 = bloat • 0.5 = ok • 1.0 = tight brief
	8.	auditability: scope + exclusions logged
• 0.0 = none • 0.5 = partial • 1.0 = complete

⸻

what it generalizes
	•	steelman (choice-pro with τ high)
	•	weak-man (choice-pro with selector inverted to weakest ↑; mostly for critique)
	•	prosecution (choice-pro)
	•	defense (choice-con)
	•	confirmation bias (degenerate: stance locked to pro + missing scope/duel; this operator fixes it via σ, τ, β, and hinges)

⸻

brief template (single run)
	•	title: match-filter — mode (decision|choice-pro|choice-con), y, k, σ, τ, h
	•	items (sorted by |\Delta \mathrm{LLR}|):
	1.	↑ strong — claim → source class → horizon → independence note
	2.	↑ med — …
	3.	↓ strong — … (include if net persuasive via contrast or context)
… up to k
	•	hinges (1–3): probe → expected direction → cost/latency
	•	provenance: scope σ, excluded sets, time run

⸻

micro-example
	•	mode: decision
	•	y: launch if expected net impact ≥ 0 with rollback ≤ 30m
	•	k: 7; σ: last 90d incidents, canary sims, top-10 customer tickets
	•	brief (desc by |\Delta \mathrm{LLR}|)
	1.	↓ strong — chaos test shows 18% fail at rollback gate (sim, last 7d, independent env)
	2.	↑ strong — canary to 5% users: +2.1% conv, −0.1% crash (experiment, 14d)
	3.	↓ med — pager budget would breach at p95 if fail rate >12% (slo calc)
…
	•	hinges: rerun chaos with patched gate; extend canary to 10% for 48h
	•	provenance: sources logged; exclusions noted

⸻

common pitfalls & patches

pitfall	symptom	patch
straw drift	target quietly reworded	lock τ; quote y verbatim at top
omission theater	obvious sources absent	prereg σ; list exclusions; holdout check
echoes	many items same lineage	estimate ρ; collapse to one representative
score cosplay	fake precision on \Delta \mathrm{LLR}	allow coarse bins; keep sorting logic transparent
criterion drift	arguing vibes, not rule	restate β (decision-mode) at top of brief


⸻

downstream moves
	•	dimensionalize → turn recurrent items into axes/metrics
	•	ramify → design probes/contingencies from hinges
	•	criterion control → legitimately re-threshold β as costs/priors shift
	•	lattice-ify → pareto-prune options before choice-mode runs

⸻

done when
	•	single-perspective brief (≤ k items) is emitted, ranked by |\Delta \mathrm{LLR}|, with hinges + provenance; dimensionalization score ≥ 0.6 on fidelity, stability, and hinge clarity.