---
name: excavate
description: excavate performs assumption archaeology. it reveals the layered structure of "what must be true" beneath a claim, plan, belief, or principle. the goal is to surface implicit premises, map dependencies, identify cruxes, and expose where disagreement or uncertainty actually lives. unlike antithesize (generating opposition), excavate is diagnostic. it lights up the skeleton beneath the stance.
---

## tl;dr

**excavate** maps the assumption-stack that makes the claim coherent.

excavate asks:

> "what hidden assumptions are propping this up, and what do *those* depend on?"

it's a **downward-mapping operator**.

---

## when to use

use **excavate** when you want to understand:

- the **hidden structure** under a belief or plan  
- the **real cruxes** driving disagreement  
- what assumptions are **empirical** vs **normative** vs **structural**  
- where uncertainty actually lives  
- what to probe before committing to a direction

don't use when:

- you want opposition → **antithesize**

rule of thumb:  
**excavate = "what must be true beneath this?"**

---

## assumption types (tags)

excavate classifies assumptions into five canonical categories:

- **[empirical]** — descriptive world claims, probabilities, causal expectations  
- **[normative]** — value judgments, priorities, ethical constraints  
- **[structural]** — incentives, institutions, competitive dynamics, coordination structure  
- **[psychological]** — assumptions about cognition, motivation, bias, perception  
- **[definitional]** — category boundaries, ontology, what terms *mean*

these tags are metadata — they illuminate where disagreements cluster.

---

## signature

excavate(claim, max_depth?, focus?) → {assumption_tree, cruxes, probes}

- **claim:** the surface statement to dig into  
- **max_depth:** default 3–4; deeper exposes more layers  
- **focus:** optional emphases (empirical | normative | structural | psychological | definitional)

output is:

- a **layered assumption tree**  
- a **crux list** (3–7 load-bearing assumptions)  
- **probe questions** that would most update the stance

---

## process (step by step)

### step 0: normalize the claim  
ensure the claim is crisp, scoped, and not two claims fused together.

### step 1: generate layer-1 assumptions  
ask: "what must be true for this claim to make sense?"  
produce 3–7 assumptions, each tagged by type.

### step 2: recurse  
for each assumption:  
"and what must be true for *that* to make sense?"  
produce 1–4 sub-assumptions until hitting a value-axiom, redundancy, or max_depth.

### step 3: tag flags  
mark assumptions with:

- **[CRUX]** — flipping this would flip or materially change the claim  
- **[HIGH-UNCERTAINTY]** — evidence weak or unknown  
- **[HIGH-LEVERAGE]** — clarifying this resolves multiple branches

### step 4: summarize cruxes  
select the 3–7 highest-impact assumptions based on crux × uncertainty × leverage.

### step 5: generate probes  
produce concrete questions or tests (empirical, conceptual, institutional) that would update the cruxes.

---

## quality criteria

**structural clarity**  
- [ ] layers are clean, no duplicated logic  
- [ ] tags correctly classify assumption types  

**crux identification**  
- [ ] 3–7 assumptions marked as genuine load-bearing points  
- [ ] cruxes differ meaningfully in type or leverage  

**diagnostic sharpness**  
- [ ] surfaces where actual disagreement likely lives  
- [ ] distinguishes empirical uncertainty from value conflict  

**actionable probes**  
- [ ] each probe targets a crux  
- [ ] probes are measurable, investigable, or framable  

---

## genre-specific patterns

### strategic decisions  
uncover resource assumptions, competitive assumptions, timeline assumptions, reversibility assumptions.

### forecasts  
uncover scaling assumptions, incentive assumptions, regime-shift assumptions.

### principles / values  
uncover moral weightings, tradeoff priorities, implicit boundary conditions.

### product decisions  
uncover user-behavior assumptions, trust assumptions, execution constraints.

---

## anti-patterns

### shallow paraphrase  
restating the claim in different words is not excavation.

### circular layers  
each lower layer must add new structure, not repeat the parent assumption.

### overproduction  
generating 20+ assumptions per layer loses the tree's coherence.

### premature judgment  
excavate is descriptive, not evaluative — no ranking or critique.

---

## integration with other ops

**downstream:**  
- **antithesize** → generate structured opposition from surfaced assumptions  
- **dimensionalize** → transform cruxes into measurable dimensions for comparison

---

## examples (mini)

### example 1: excavate "ai alignment should be a major global priority"

**layer 1**  
- [empirical] [CRUX] ai will reach capability levels where misalignment is dangerous  
- [empirical] misalignment is plausible even with good-faith designers  
- [normative] preventing large-scale harm is morally prioritized  
- [structural] [HIGH-UNCERTAINTY] coordination across major actors is feasible  
- [definitional] alignment can be specified non-vacuously

**layer 2 (samples)**  
- under "misalignment plausible":  
  - [empirical] oversight is imperfect  
  - [empirical] specification gaming emerges under optimization  
- under "coordination feasible":  
  - [structural] incentives can be altered  
  - [structural] enforcement mechanisms can exist

**cruxes**  
- ai reaches dangerous capability (empirical)  
- deployment incentives outpace safety (structural)  
- operational alignment definitions exist (definitional)

**probes**  
- what empirical thresholds constitute "dangerous capability"?  
- what historical cases resemble high-stakes coordination under competition?  
- can alignment metrics be hardened against gaming?

---

### example 2: excavate "we should launch a premium tier this year"

**layer 1**  
- [empirical] [CRUX] enough users have willingness-to-pay  
- [empirical] differentiated value can be delivered  
- [structural] [CRUX] premium will not damage the base through cannibalization  
- [structural] roadmap capacity exists  
- [psychological] users won't interpret premium as nickel-and-diming

**layer 2 (samples)**  
- under "willingness-to-pay":  
  - [empirical] clear segments with unmet needs exist  
  - [empirical] budget authority sits with target users  
- under "not damaging the base":  
  - [structural] pricing avoids degrading the existing tier  
  - [psychological] early adopters won't feel penalized

**cruxes**  
- real willingness-to-pay exists (empirical)  
- differentiation is materially deliverable (empirical/structural)  
- trust won't erode under tiering (structural/psychological)

**probes**  
- run a reversible pilot with a targeted user cohort  
- measure sentiment shifts relative to existing users  
- test feature-bundle differentiation assumptions explicitly

---

## meta-note

excavate = **assumption topology**.

the output isn't a verdict — it's the *map* that tells you where effort, evidence, or disagreement should go next.

