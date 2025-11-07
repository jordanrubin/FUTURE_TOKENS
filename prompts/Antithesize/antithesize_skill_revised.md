---
name: antithesize
description: generate standalone opposition to any proposition. antithesis must be comprehensible without reading thesis—it's an alternative complete worldview, not refutation.
---

## tl;dr

antithesis is NOT refutation. it's a RIVAL THESIS that:
- stands alone (comprehensible without reading original)
- accepts same facts (but reinterprets valence)
- reaches opposite conclusion
- generates different action/recommendation

**critical upstream dependency**: identify GENRE first (essay? review? code? recipe? conversation?), then antithesize within that frame.

**process**:
1. identify genre + what thesis is trying to do
2. steel-man the thesis (oppose strongest version)
3. pick axis (what to oppose) + operator (how to oppose)
4. set intensity (how hard to push) + contract (tone)
5. generate antithesis that passes standalone test
6. extract failure_modes, cruxes, evidence_hooks

---

## genre-specific patterns

before choosing axis/operator, identify WHAT YOU'RE ANTITHESIZING. different genres require different opposition structures.

### **review / recommendation**
**thesis**: "X is good, i recommend it"

**antithesis structure**:
- ACCEPT: the experience/facts (what happened)
- FLIP: the evaluation (good → bad, feature → bug)
- REVERSE: the recommendation (do → don't, extend → end)

**example**:
- thesis: "garden leave is awesome, i'd extend it, predicts happy retirement"
- antithesis: "garden leave is seductive stagnation, end it now, extending makes retirement harder"
  - same facts: you experienced time freedom, exploration, recovery
  - flipped valence: freedom → drift, exploration → dependence, recovery → atrophy
  - opposite action: extend → end

### **philosophical essay / argument**
**thesis**: "X causes Y, therefore Z"

**antithesis structure**:
- ACCEPT: the observations (Y is real)
- SWAP: the mechanism (not X causes Y, but W causes Y, or Y causes X)
- CONCLUDE: opposite implication

**example**:
- thesis: "removing pressure reveals authentic preference"
- antithesis: "preference is regime-generated, not discovered; removing pressure creates different preferences, doesn't uncover hidden ones"

### **technical argument / code**
**thesis**: "approach X solves problem P"

**antithesis structure**:
- ACCEPT: problem P exists and matters
- CRITIQUE: X has failure modes A, B, C that matter in practice
- PROPOSE: approach Y solves P better, or P is wrong problem to solve

### **guide / instruction**
**thesis**: "do X to achieve Y"

**antithesis structure**:
- ACCEPT: Y is desirable goal
- ARGUE: X doesn't reliably produce Y, or produces anti-Y
- RECOMMEND: do Z instead, or abandon Y as goal

### **business case / decision doc**
**thesis**: "we should do X because benefits > costs"

**antithesis structure**:
- ACCEPT: the situation/constraints are real
- REINTERPRET: costs are higher than stated, benefits are illusory, or incentives are misaligned
- RECOMMEND: do opposite of X, or do nothing

### **memoir / narrative**
**thesis**: "event X meant Y to me"

**antithesis structure**:
- ACCEPT: event X happened as described
- REINTERPRET: X actually means Z (different significance)
- SUGGEST: alternative framing with different implications for future

**key principle**: antithesis is NOT "you're wrong"—it's "here's an equally coherent but opposite interpretation of same reality"

---

## critical requirements

### **standalone test** (non-negotiable)

antithesis MUST be comprehensible to someone who never read the thesis.

**test questions**:
- can i understand this without reading the original? 
- does it make positive claims, or just negate other claims?
- could this have been written FIRST, with thesis as response to IT?

**bad** (parasitic): "jordan's wrong about preference discovery because he's confusing recovery with revelation"
- only makes sense if you know what jordan said
- defined by opposition, not by its own claims
- negative framing ("wrong about...")

**good** (standalone): "preference is regime-dependent: scarcity generates survival-optimized wants, abundance generates meaning-optimized wants. garden leave doesn't reveal hidden essence—it creates new preference-structure under new constraints."
- makes sense without reading jordan's essay
- positive claims about how preference works  
- thesis becomes a special case of this framework

### **steel-man first** (intellectual honesty)

before opposing, state the STRONGEST version of thesis:
- what's the best interpretation?
- what would make it true?
- which parts are hardest to argue against?

oppose the steel-man, not the weak version.

**bad**: "jordan says skills are valuable but they're actually just premature optimization after n=2 examples"
- attacks early-draft messiness
- ignores that iteration is the point

**good**: "even after skills stabilize (n=50+), formalization might not improve output quality. if legibility ≠ efficacy, skills become cargo cult rigor."
- opposes the strong form (mature skills)
- takes best case seriously

### **context-appropriate constraints**

understand the ACTUAL constraint structure, not hypothetical:
- who bears the costs?
- what are real failure modes vs imagined?
- what resources/capabilities actually exist?

**bad**: "skills are expensive to maintain" (assumes human solo work)
**good**: "skills might not improve output quality" (recognizes LLM-human collab costs are near-zero, so quality is only real metric)

---

## process detailed

### step 0: identify genre (REQUIRED FIRST)

before choosing axis/operator:
- **what KIND of thing is this?** (review/essay/guide/code/conversation/recipe/decision-doc)
- **what is it TRYING to do?** (persuade/inform/recommend/instruct/decide/express)
- **what would opposite look like in this genre?**

use genre patterns above to guide structure.

**if genre is ambiguous**: you may need FRAMESTORM first (separate skill) to generate candidate frames.

### step 1: choose axis (what to oppose)

axis = the dimension along which you'll generate opposition.

**quick triage by symptom**:

| you notice | axis | key question |
|---|---|---|
| claim optimizes wrong thing | pragmatic | what's actual objective? |
| data feels shaky / cherry-picked | epistemic / statistical | what's base rate + reference class? |
| story feels post-hoc | methodological | what would've predicted this ex ante? |
| mechanism unclear / confounded | causal | which arrow cuts effect? |
| incentives seem misaligned | incentive | who wins under this? |
| works in-sample, dies OOD | distributional | what shift breaks it first? |
| scales weirdly | scaling / limit | what happens at 0, 1, ∞? |
| tail risk / ruin ignored | resource / ergodicity | time-average vs ensemble? |
| words as social moves | performative / simulacra | if costly to say, would you? |
| group ≠ individual outcomes | institutional / coordination | mechanism design issue? |
| category errors | ontological / type | what KIND of thing is this? |
| hand-wavey compute/time | computational | asymptotic budget? |
| values conflict, not facts | axiological | which weights flip sign? |
| experience mismatch | phenomenological | what would opposite feel like? |

**rule**: pick TWO axes—one mechanistic (causal/incentive/stats/compute) + one normative (axiology/phenomenology/performative). cross-term generates useful friction.

### step 2: choose operator (how to oppose)

operator = the specific move you make along chosen axis.

**core operators** (name · what it does · micro-example):

- **objective_swap** — optimize different (truer) goal · accuracy → calibration
- **dualize** — view from constraint's perspective · allocate vs price
- **quantifier_flip** — some ↔ all · "works for me" ≠ "works generally"
- **boundary_case** — test 0/1/∞, edge conditions · your policy at 10 users? 1M users?
- **counter_model** — build minimal world where it fails · same priors, different outcome
- **loss_change** — swap loss function · MAE vs MSE vs proper score
- **subgroup_slice** — stratify and look for sign flips · p10 vs p90 behavior
- **adversarial_perturb** — minimal change that breaks it · one bit flip and you're toast
- **refclass_shift** — reindex the baseline · firm → industry → economy
- **causal_surgery** (do()) — cut an edge, see if effect survives · intervene on A, observe B
- **incentive_remap** — change payoffs/status · make metric career-neutral
- **temporal_refactor** — near-term win, long-term ruin · time-average vs ensemble
- **units_check** — demand dimensional sanity · divide out the vibes
- **paradox_trap** — condition/marginalize to flip · both true under different gates
- **simulacrum_test** — make utterance costly, see if persists · truth vs troupe
- **ideological_turing** — write opposite policy under opposite belief · then evaluate
- **goodhart_invert** — push proxy until mission breaks · metric defeats goal
- **type_safety** — enforce kind discipline · process ≠ object; preference ≠ belief

### step 3: set intensity + contract

**intensity** (how hard to push):
- lvl 1: contrast (gentle disagreement, mostly aligned)
- lvl 2: counterpoint (substantive disagreement, still respectful)
- lvl 3: stress-test (find breaking points, surgical pressure)
- lvl 4: frame inversion (flip fundamental assumptions)
- lvl 5: core challenge (question the entire enterprise)

**contract** (tone/permissions):
- **gentle**: cozy, collaborative, assume good faith
- **adversarial**: sport, debate-mode, sharp but fair
- **identity_ok**: permission to press on self-concept, core beliefs

**rule**: increase levels only after logging a crux. always state the contract upfront.

### step 4: generate antithesis

using genre structure + chosen axes/operators + intensity/contract:

1. **restate thesis in strongest form** (steel-man)
2. **identify core claims** that will be opposed
3. **accept shared reality** (facts, observations, constraints)
4. **reinterpret valence** (flip evaluation: good → bad, feature → bug)
5. **propose opposite mechanism** (if causal claim)
6. **reach opposite conclusion** (different implication, recommendation, action)
7. **verify standalone** (would this make sense without reading thesis?)

### step 5: extract outputs

**antithesis** — the constructed opposite case (main output)

**failure_modes** — specific ways thesis breaks:
- brittle assumptions (what has to stay true for thesis to work?)
- bad priors (what beliefs does thesis require?)
- incentive leaks (who benefits from this framing?)
- boundary violations (where does it break down?)

**cruxes** — minimal belief changes that flip conclusion:
- empirical cruxes: "if X is measured and found to be Y, thesis collapses"
- axiological cruxes: "if you weight value A over value B, opposite conclusion"

**evidence_hooks** — what to measure next to resolve:
- specific experiments, data to collect, comparisons to run
- ways to adjudicate between thesis and antithesis

---

## axes reference (deep cuts)

**epistemic** — truth claims · thin priors, assertive tone · overfitting to anecdotes

**methodological** — how you reasoned · after-the-fact coherence · cargo-cult rigor

**axiological** — value weights · moral heat without statistics · incommensurability as fact

**phenomenological** — lived texture · "not what it feels like" · projection

**performative** — rhetoric as act · applause-line energy · clout over truth

**pragmatic** — does it work · pretty theory, ugly ops · metric drift

**causal** — arrows not nodes · wiggle input, nothing moves · confounding

**incentive** — payoff surfaces · nice words, perverse rewards · cobra effect

**statistical** — priors, baselines · small-n swagger · aggregation fallacy

**computational** — tractability/time · exponential hand-waving · impossibility hiding in vibes

**distributional** — OOD fragility · changes domain, keeps claim · training set myopia

**scaling/limit** — asymptotics · linear intuition, nonlinear world · sign flips at scale

**resource/ergodicity** — conservation/ruin · average win, catastrophic path · time vs ensemble

**simulacra** — truth as signal · tracks status over reality · level-mixing

**institutional/coordination** — mechanism design · individually rational, collectively dumb · commons tragedy

**ontological/type** — kind errors · reifying process as object · category bleed

---

## quality checklist

before calling antithesis complete, verify:

- [ ] **standalone**: makes sense without reading thesis
- [ ] **steel-man**: opposes strongest version, not weak form
- [ ] **positive claims**: says what IS true, not just what's false
- [ ] **genre-appropriate**: uses correct opposition structure for genre
- [ ] **context-aware**: understands actual constraints, not hypothetical
- [ ] **accepts facts**: doesn't deny observations, reinterprets them
- [ ] **flips conclusion**: reaches opposite recommendation/implication
- [ ] **extracts outputs**: has failure_modes, cruxes, evidence_hooks

---

## common failures (anti-patterns)

### **parasitic refutation**
symptom: antithesis only makes sense if you've read thesis
cause: negating claims instead of making positive counter-claims
fix: write antithesis FIRST, then check if thesis is needed to understand it

### **weak-man attacking**
symptom: opposing early-draft messiness, not mature form
cause: taking easy target instead of strongest version
fix: steel-man first, explicitly state best case, THEN oppose

### **genre confusion**
symptom: treating review as philosophical essay, memoir as argument
cause: not identifying what KIND of thing you're antithesizing
fix: run step 0 (identify genre) before anything else

### **hypothetical constraints**
symptom: arguing against costs/problems that don't exist in context
cause: importing constraints from different setting
fix: understand actual constraint structure first

### **both-sides-ism**
symptom: "thesis has good points, antithesis has good points"
cause: false balance, not true opposition
fix: this is synthesis failure, not antithesis. antithesis must COMMIT to opposite view.

---

## examples (worked)

### example 1: review genre

**thesis**: "hades 2 is brilliant, buy it now"

**antithesis**: "hades 2 is competent but hollow, wait for sale"
- accepts: game has polish, mechanical depth
- flips: polish → soulless iteration, depth → overwhelming bloat
- reverses: buy now → wait for sale

### example 2: philosophical essay

**thesis**: "LLM scaling will continue indefinitely, AGI via scale"

**antithesis**: "returns to scale are real but diminishing, rotation to algorithms imminent"
- accepts: scaling has worked so far
- swaps mechanism: not "scale = all you need" but "scale had high ROI in regime 1, entering regime 2 where algorithms matter more"
- concludes: portfolio approach, not all-in on scale

### example 3: business case

**thesis**: "we should adopt microservices because scalability"

**antithesis**: "microservices will kill our velocity for hypothetical scale we don't need"
- accepts: we might need scale someday
- reinterprets: operational complexity cost >> scaling benefit for our actual traffic
- recommends: monolith now, extract services when ACTUALLY constrained

---

## integration with other skills

**upstream**:
- **framestorm**: generates candidate frames when genre ambiguous
- **rhyme**: finds patterns to guide mechanism-swap

**downstream**:
- **synthesis**: uses antithesis outputs (failure_modes, cruxes) as inputs
- **dimensionalize**: turns axes into scoreable dimensions

**parallel**:
- **metaphorization**: can inform counter_model generation
- **question-gym**: can probe cruxes interactively

---

## meta-note

antithesis is PROSOCIAL DISAGREEMENT. you're helping thesis-holder by:
- stress-testing their claims
- surfacing hidden assumptions
- identifying cruxes
- making opposition legible

done well, thesis-holder should say "that's a strong counter, i need to think about it" not "you're attacking me."

the goal isn't to WIN—it's to find TRUTH via collision of complete worldviews.
