---
name: antithesize
description: automated dialectic operator. generate structured opposition to any proposition; surface failure‑modes, hidden assumptions, and alternate equilibria.
---

tl;dr
	•	pick an axis (what to negate), an operator (how to negate), an intensity (how hard to push), and a contract (tone/permissions).
	•	output is antithesis, plus failure_modes and cruxes you can reuse for synthesis.

examples
- antithesis: pragmatic + objective_swap, lvl3
- antithesis: causal + do()-surgery, lvl4, identity_ok
- antithesis: statistical + simpson_trap, lvl2, gentle
- antithesis: incentive + remap, lvl3


---

axis chooser (how to decide where to push)

when in doubt, run the quick triage: utility → evidence → generator → generalization → type → coordination → compute.

symptom you notice	default axis	first question	suggested operators
the claim optimizes the wrong thing	pragmatic	what is the actual objective + loss?	objective_swap, loss_change, temporal_refactor
the data vibe is shaky / cherry‑picked	epistemic / statistical	what’s the base rate + reference class?	refclass_shift, subgroup_slice, simpson_trap
the story feels post‑hoc	methodological	what would have predicted this ex ante?	quantifier_flip, units_check, type_safety
mechanism unclear / confounded	causal	which arrow do i cut so effect vanishes?	causal_surgery, counter_model
incentives seem misaligned	incentive	who pays / wins under this rule?	incentive_remap, goodhart_invert
works in‑sample, dies in the wild	distributional	which shift breaks it first?	adversarial_perturb, boundary_case
scales weirdly	scaling / limit	what happens at 0, 1, ∞?	boundary_case, dualize
tail risk / ruin ignored	resource / ergodicity	are we optimizing time‑average or ensemble?	temporal_refactor, goodhart_invert
words feel like social moves	performative / simulacra	if saying it became costly, would you?	simulacrum_test, mimetic_parody
group outcome differs from individual	institutional/coordination	what’s the mechanism design here?	counter_model, incentive_remap
category errors	ontological / type	what kind of thing is this?	type_safety, units_check
hand‑wavey compute/time	computational/complexity	what’s the asymptotic budget?	objective_swap (latency), boundary_case
values conflict, not facts	axiological	which value weights flip the sign?	objective_swap, ideological_turing
experience mismatch	phenomenological	what would it feel like if the opposite were true?	counter_model, meta‑diagnostic

rule of thumb: pick two axes: one mechanistic (causal/incentive/stats/compute) + one normative/experiential (axiology/phenomenology/performative). the cross‑term generates useful friction.

---

axes (deep cuts)

concision over catechism; each entry = definition · telltales · default moves · failure‑mode.

epistemic — truth claims. · thin priors, assertive tone · refclass_shift, quantifier_flip · overfitting to anecdotes.

methodological — how you reasoned. · after‑the‑fact coherence · units_check, type_safety · cargo‑cult rigor.

axiological — value weights. · moral heat without statistics · objective_swap, ideological_turing · incommensurability posing as fact.

phenomenological — lived texture. · “that’s not what it feels like” · counter_model (role/scene), meta‑diagnostic · projection.

performative — rhetoric as act. · applause‑line energy · simulacrum_test, mimetic_parody · optimizing for clout not truth.

pragmatic — does it work. · pretty theory, ugly ops · objective_swap (define done), loss_change · metric drift.

causal — arrows not nodes. · wiggle an input, nothing moves · causal_surgery, counter_model · confounding.

incentive — payoff surfaces. · nice words, perverse rewards · incentive_remap, goodhart_invert · cobra effect.

statistical — priors, baselines. · small‑n swagger · subgroup_slice, simpson_trap · aggregation fallacy.

computational — tractability/time. · exponential hand‑waving · boundary_case (n→∞), objective_swap (latency) · algorithmic impossibility hiding in vibes.

distributional — OOD fragility. · changes domain, keeps claim · adversarial_perturb, boundary_case · training set myopia.

scaling/limit — asymptotics. · linear intuition in nonlinear world · boundary_case, dualize · sign flips at scale.

resource/ergodicity — conservation/ruin. · average win, catastrophic path · temporal_refactor · time vs ensemble mismatch.

simulacra — truth as signal. · claims track status more than reality · simulacrum_test · level‑mixing.

institutional/coordination — mechanism design. · individually rational, collectively dumb · counter_model, incentive_remap · commons tragedies.

ontological/type — kind errors. · reifying process as object (or vice versa) · type_safety, units_check · category bleed.

---

operators (what the machine does)

cheat‑sheet: name · one‑liner · micro‑example.
	•	objective_swap — optimize a different (truer) goal. · accuracy → calibration.
	•	dualize — look from the constraint’s point of view. · allocate vs price.
	•	quantifier_flip (∀↔∃) — some → all, all → some. · “works for me” ≠ “works generally.”
	•	boundary_case — test 0/1/∞, low‑data/high‑stakes. · your policy at 1e6 users? at 10?
	•	counter_model — build a minimal world where it fails. · same priors, new edge.
	•	loss_change — swap MAE/MSE/proper score. · optimize what you actually care about.
	•	subgroup_slice — stratify and look for sign flips. · p10 vs p90 behavior.
	•	adversarial_perturb — minimal change that breaks it. · one bit flip and you’re toast.
	•	refclass_shift — reindex the baseline. · firm→industry→economy.
	•	causal_surgery (do()) — cut an edge; see if effect survives. · intervene on A, observe B.
	•	incentive_remap — change payoffs/status fees. · make metrics career‑neutral.
	•	temporal_refactor — near‑term win, long‑term ruin. · time‑average beats ensemble.
	•	units_check — demand dimensional sanity/invariance. · divide out the vibes.
	•	paradox_trap (simpson/berkson) — condition/marginalize to flip. · both sides true under different gates.
	•	simulacrum_test — make utterance costly; see if it persists. · truth vs troupe.
	•	ideological_turing — write the opposite policy you’d enact if you believed the opposite. · then evaluate it.
	•	goodhart_invert — push the proxy until mission breaks. · metric defeats goal.
	•	type_safety — enforce kind discipline. · process≠object; preference≠belief.

---

intensity (torque) & contract (tone)
	•	levels: 1 contrast · 2 counterpoint · 3 stress‑test · 4 frame inversion · 5 core challenge.
	•	contracts: gentle (cozy), adversarial (sport), identity_ok (permission to press on self‑concept).
	•	rule: increase levels only after logging a crux; always state the contract.

---

outputs (what you log)
	•	antithesis — the constructed opposite case.
	•	failure_modes — specific ways the thesis breaks (brittle assumptions, bad priors, incentive leaks…).
	•	cruxes — minimal belief diffs; flip these → conclusion flips.
	•	evidence_hooks — what to measure next if you cared to resolve it.

---

usage heuristics
	•	pair a mechanism axis with a norms/experience axis; single‑axis disagreements stall.
	•	prefer operators that change invariants (units/limits/do()) over performative dunking.
	•	if the other side has the metric, you need the mechanism; if they have the mechanism, bring the metric.
	•	log cruxes; they become dialectic attractors for later synthesis.

---

api (pseudo)

antithesis:
  input:
    thesis: string
    axis: [one_or_more]
    operator: [one_or_more]
    intensity: 1..5
    contract: [gentle|adversarial|identity_ok]
    budget: {tokens: int, time: int}
  output:
    antithesis: string
    failure_modes: [string]
    cruxes: [string]
    evidence_hooks: [string]


---

decision flow (ascii)

start
 ├─ define objective (loss?) ──> pragmatic/incentive
 │         │
 │         └─ if incentives weird ──> incentive_remap / goodhart
 ├─ evidence thin? ──> epistemic/statistical (refclass, slice, simpson)
 ├─ mechanism unclear? ──> causal (do(), counter_model)
 ├─ will it travel? ──> distributional/scaling (boundary, adversarial)
 ├─ type mismatches? ──> ontological/type_safety
 ├─ coordination needed? ──> institutional/performative/simulacra
 └─ compute hand‑wave? ──> computational (asymptotics, budget)


---

minimal playbook (copy/paste prompts)
	•	“antithesis: pragmatic + objective_swap, lvl3, gentle. treat success as calibration not accuracy.”
	•	“antithesis: causal + do()-surgery, lvl4, adversarial. specify the cut edge that kills the effect.”
	•	“antithesis: statistical + simpson_trap, lvl2. show aggregation vs stratified sign.”
	•	“antithesis: incentive + remap, lvl3. redesign payoffs; predict behavioral shift.”
	•	“antithesis: scaling + boundary_case, lvl3. take parameter to ∞; state the first failure.”
	•	“antithesis: resource + temporal_refactor, lvl3. convert ensemble gains to time‑average.”
	•	“antithesis: ontological + type_safety, lvl2. assert category errors; re‑type the claim.”
	•	“antithesis: performative + simulacrum_test, lvl2. make utterance costly; see if it survives.”

---

worked micro‑example (toy)

thesis: “rank creators by total views; fund the top 1%.”
	•	pick axes → incentive × distributional.
	•	operators → incentive_remap, boundary_case, goodhart_invert.
	•	antithesis → funding by calibrated engagement (watch‑through per cohort), with cohort‑OOD penalties; predict metric gaming and collapse at scale; propose mechanism to keep exploration alive.
	•	failure_modes → success proxy induces clickbait arms race; discovery dies OOD.
	•	cruxes → whether exploration value > exploitation loss by cohort.
	•	evidence_hooks → ran­domized exploration tax; compare cohort stickiness.

---

common pitfalls (and counters)
	•	performative dunking posing as analysis → force units_check or do().
	•	proxy wars → name the loss explicitly; swap it.
	•	ontology blur → re‑type or refuse argument until kinds are clear.
	•	single‑axis thrashing → add a second orthogonal axis or stop.