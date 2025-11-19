---
name: counterfactual
description: generate structured “what-if” worlds by modifying one variable at a time (or one cluster), holding all other conditions stable, to reveal causal structure, necessity, sufficiency, and sensitivity. counterfactuals do **not** predict the future; they expose *how the world would differ* under specific alterations.
---

## tl;dr

**counterfactual ≠ simulate ≠ antithesize.**

- **simulate** → unfold plausible futures from current state  
- **antithesize** → build rival worldviews  
- **counterfactual** → hold world fixed, tweak *exactly one* cause (or cluster), and trace logical consequences

counterfactual asks:

> “if X had been different (or were different), what else must change, what stays fixed, and what does that imply about the causal graph?”

this is the **surgical causal operator**.

-----

## when to use

use **counterfactual** when you want to:

- isolate **causal roles** (would outcome change if we alter variable V?)  
- test **necessity** (does Y require X?)  
- test **sufficiency** (if X is true, does Y follow?)  
- probe **sensitivity** (how fragile is Y to small changes in X?)  
- understand **interventions** vs **conditions**  
- do **retrospective what-ifs** (“if we’d chosen A instead of B…”)  
- evaluate **policy levers** (“if we reduce load by 20%, what downstream nodes move?”)

don’t use counterfactual for:

- generating alternative *worldviews* → **antithesize**  
- finding failure modes → **attack**  
- extrapolating temporal arcs → **simulate**  
- turning wishes into metrics → **operationalize**

-----

## counterfactual types (menu)

### **simple substitution**
replace one variable with an alternative value; hold causal parents fixed.

example: “if the team’s bandwidth had been +20% last quarter…”

---

### **minimal-change counterfactual**
change only the smallest set of variables required to make the antecedent coherent.

example: “if user signup conversion had doubled (and nothing else changed minimally).”

---

### **cluster intervention**
intervene on a **set** of tightly coupled variables.

example: “if regulatory burden AND reporting delays dropped simultaneously.”

---

### **retrospective counterfactual**
rewrite a past choice and propagate consequences just enough to reveal the causal path.

example: “if we had chosen vendor B instead of A…”

---

### **structural counterfactual**
alter a *mechanism* rather than a variable (e.g., feedback loop removed).

example: “if this team lacked a review bottleneck entirely…”

---

### **counterfactual contrast set**
generate 3–5 alternate worlds to expose gradient sensitivity.

example:  
- X = −20%  
- X = baseline  
- X = +20%  
- X = +50%

---

### **impossible-but-informative counterfactual**
change something physically or institutionally impossible to clarify causal dependence.

example: “if decisions were instant (zero latency).”

-----

## signature

counterfactual(world, intervention, scope?) → cf_world

- **world:** description of the current system, scenario, or factual baseline  
- **intervention:** the specific altered variable/cluster/mechanism  
- **scope (optional):** `minimal` | `full` | `structural` (how far consequences propagate)

output: predicted differences vs baseline, causal paths, sensitive nodes, unchanged invariants.

-----

## process (step by step)

### step 0: define the factual world
identify:

- variables (states, actors, resources, incentives)  
- causal graph (explicit or implicit)  
- invariants (constraints that must remain true)  
- horizon (how far to propagate)

### step 1: define the intervention cleanly
a counterfactual only works if the antecedent is precise.

- what variable changes?  
- to what value?  
- is this an intervention (`do(X=x)`) or a hypothetical measurement?  
- what stays fixed?

### step 2: determine minimal adjustment for coherence  
check whether the world becomes inconsistent with the new value.  
if so, adjust *only as much as required*.

example: raising throughput may require minimal increases in staffing or tool capacity.

### step 3: propagate downstream consequences  
trace causal edges forward:

- immediate effects  
- short-run downstream changes  
- long-run equilibria (if needed)  
- feedback loops  
- bottlenecks and ceilings

don’t hallucinate new mechanisms; only use the graph embedded in the world.

### step 4: compare cf_world to baseline  
output a **delta sheet**:

- changed variables  
- unchanged variables (invariants)  
- causal paths  
- discontinuities (sign flips, threshold crossings)  
- ambiguities (requires additional assumptions)

### step 5: extract insights  
- which nodes were most sensitive?  
- which mechanisms mattered?  
- what minimal interventions produce large shifts?  
- what doesn’t change even under intervention?

-----

## quality criteria

**causal clarity**  
- [ ] explicit difference between facts and intervention  
- [ ] causal edges respected (no magical jumps)  
- [ ] minimal changes tracked

**coherence**  
- [ ] no contradictions introduced  
- [ ] invariants maintained  
- [ ] interventions specified as `do()` not vibe-level changes

**contrastive utility**  
- [ ] cf_world–baseline delta clearly stated  
- [ ] sensitive nodes highlighted  
- [ ] ambiguous regions labeled

**parsimony**  
- [ ] unnecessary downstream speculation avoided  
- [ ] effects capped at meaningful horizons

**decision relevance**  
- [ ] shows whether intervention is worth it  
- [ ] identifies which changes actually matter

-----

## genre-specific patterns

### decision-making  
- test whether changing one input flips the decision  
- inspect sensitivity of outcomes to specific constraints

### engineering / systems  
- evaluate limit behavior, throughput, race conditions  
- check whether removing one bottleneck shifts load elsewhere

### management / process  
- test staffing changes, coordination friction reductions  
- evaluate decision latency effects

### product / UX  
- isolate effect of single friction removal (signup, onboarding)  
- explore retention if key feature adoption changes

### research / hypotheses  
- test causal necessity/sufficiency  
- evaluate alternative values for predictors

-----

## anti-patterns

### counterfactual ≠ fantasy  
changing variable X does **not** license rewriting the entire rest of the world arbitrarily.

### forgetting minimality  
intervention should alter *least* compatible set of nodes.

### conflating prediction with counterfactual  
simulate = forecast; counterfactual = causal contrast.

### collapsing into antithesis  
counterfactual ≠ rival worldview. it’s the *same world*, changed one notch.

### incoherent antecedents  
interventions must be internally consistent or minimally adjusted.  
if impossible even with minimal adjustment → mark as **counterpossible**.

-----

## integration with other ops

**upstream:**  
- decompose → identify variables  
- reframe → pick representation (resource, control, incentive)  
- operationalize → define metrics to compare worlds

**downstream:**  
- simulate → unfold cf_world into future arcs  
- attack → stress-test the counterfactual scenario  
- test → push intervention to extremes  
- evidence → check empirical plausibility of mechanism

-----

## examples (mini)

### example 1: “if hiring had been 20% faster last quarter…”
- minimal adjustments: recruiter bandwidth, interview load  
- consequences: project A latency reduces, project B unchanged due to different bottlenecks  
- delta sheet: improved throughput for tasks tied to hiring; no effect on tasks tied to training pipeline

---

### example 2: “if we removed the review bottleneck…”
- structural counterfactual  
- consequences: throughput increases until next bottleneck (testing) binds  
- delta: coordination latency ↓, defect rate ↑ slightly due to lower scrutiny

---

### example 3: “if we had prioritized feature X instead of Y…”
- retrospective  
- delta: adoption curve shifts; revenue unchanged due to seasonality constraint  
- insight: prioritization doesn’t matter unless upstream acquisition changes

-----

## meta-note

counterfactual is the **causal scalpel**:  
it exposes what is structurally tied to what.

simulate shows where you’re going.  
attack shows how things break.  
antithesize shows alternative stories.  
operationalize shows what to measure.

counterfactual shows **what actually *depends* on what**—the deepest form of understanding.