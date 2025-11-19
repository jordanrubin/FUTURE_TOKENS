---
name: judgementize
description: collapse a fully-populated context window (attacks, antithesis, synthesis, stress tests, simulations, evidence, vibes) into a concrete directional recommendation. judgementize does not re-argue; it adjudicates. its job is to integrate uncertainty, risk, reversibility, burden-scaling, and staged execution into a single action-guiding judgment.
---

## tl;dr

**judgementize = commit with clarity.**

- **diverge** → expand options  
- **reframe** → inhabit one frame  
- **attack** → surface failure modes  
- **antithesize** → generate opposition  
- **simulate** → forecast futures  
- **synthesize** → unify reasoning  

**judgementize** comes *after* any/all of these and answers:

> “given everything surfaced so far, which direction should be taken now, at what confidence, with what safeguards?”

the output is a **decision artifact**, not a search or generation step.

---

## when to use

use **judgementize** when:

- the reasoning graph is full and branching  
- multiple perspectives have been explored  
- upside and downside arguments exist on each path  
- you need an actual directional call  
- you need explicit risk, reversibility, and uncertainty handling  
- the next phase requires *agency*, not further analysis

don’t use when:

- the problem is still undifferentiated → **decompose**, **reframe**  
- you need more options → **diverge**  
- you want adversarial critique → **attack**, **antithesize**  
- you need future-world rollouts → **simulate**  
- you want reconciliation → **synthesize**

rule of thumb:  
**judgementize = analysis closure + action opening.**

---

## what judgementize produces

a complete decision artifact:

- the decision question  
- the live options  
- the evidence snapshot  
- the probability / credence distribution  
- the risk & mitigant map  
- the staged execution plan  
- the reversibility assessment  
- the burden-scaled decision threshold  
- the hinge-tests (cheapest probes likely to flip/confirm)  
- the directional recommendation with if-then pivot paths  
- a diagnostic snapshot (top upshot, top downside, dominant crux)

it is the **bridge from thinking → doing**.

---

## judgement modes (menu)

### **directional adjudication**
select the option most justified by the current evidence + burdens.

---

### **probabilistic weighting**
assign credences based on the most influential arguments.

---

### **risk surfacing**
identify structural, execution, and tail risks; propose mitigants.

---

### **reversibility analysis**
evaluate how cheaply and how soon the decision can be undone.

---

### **burden scaling**
adjust required confidence based on reversibility and blast radius.

(reversible decisions demand less certainty; irreversible ones demand more.)

---

### **staged commitment**
sequence the decision into reversible → semi-reversible → locked phases.

---

### **hinge-tests**
identify the 1–3 minimal-cost observations likely to shift the call.

---

### **contingency planning**
define if-then rules for pivots once new information arrives.

---

## signature

judgementize(question, options?, horizon?, constraints?) → decision_doc

- **question:** the fork to resolve  
- **options:** candidate actions, if not inferable  
- **horizon:** timeframe that determines weighting  
- **constraints:** resource, values, risk limits  

output: a structured decision with recommendation, pivots, hinges, diagnostics.

---

## process (step by step)

### step 0: normalize the decision
clean one-sentence restatement. identify hidden sub-decisions.

---

### step 1: enumerate live options
list 2–5 genuine options; explicitly strike dominated ones.

---

### step 2: compress the evidence
summarize:

- main upsides  
- main downsides  
- strongest pro/anti frames  
- simulated futures  
- synthesized takeaways  
- major empirical anchors  

extract the **dominant crux**.

---

### step 3: assign credences
estimate p(option_i is ex-post best).  
state:

- key assumptions  
- variables most likely to update the numbers  
- uncertainty width

if uncertainty is wide enough to forbid commitment → go to **probe mode**.

---

### step 4: burden-scaling (reversibility-aware)
set an implicit burden-of-decision:

- **low** if highly reversible  
- **medium** if partially reversible  
- **high** if lock-in or blast radius is significant  

ensure option credence clears the scaled threshold before committing.

---

### step 5: surface risks
for the leading option:

- structural risks (irreversibility, reputational, systemic)  
- execution risks (follow-through, coordination, entropy)  
- tail risks (low-p, high-impact)

pair each with mitigants or monitoring triggers.

---

### step 6: stage the move
produce a reversible-to-irreversible path:

- **stage 0:** cheap probes (information-gathering)  
- **stage 1:** reversible commitment  
- **stage 2:** deeper commitment with guardrails

define the advancement/abort criteria.

---

### step 7: analyze reversibility
rate 1–5; describe:

- mechanics of undoing  
- cheap-undo window  
- identity, reputation, and sunk-cost traps

---

### step 8: hinge-tests
generate 1–3 **minimal-cost, high-informational-value probes** that:

- directly target the dominant crux  
- could flip the recommendation  
- are fast to run

if hinge-tests are both cheap and high-impact → promote *probe mode*.

---

### step 9: emit diagnostics
surface:

- the top upside driver  
- the top downside driver  
- the dominant crux  
- the single argument that most shifted the credences

---

### step 10: emit the recommendation
provide:

- default action  
- rationale in one sentence  
- pivot plan (if-then rule)  
- key signals to monitor  
- hinge-tests (if applicable)  
- whether the decision is *commit-mode* or *probe-mode*

---

## quality criteria

**coherence**  
- [ ] recommendation matches upstream reasoning  
- [ ] reflects both upside and downside mass (symmetry integrity)

**explicitness**  
- [ ] credences stated  
- [ ] burden-scaled threshold implied  
- [ ] risks + mitigants enumerated  
- [ ] reversibility ranked  
- [ ] hinge-tests included

**operational clarity**  
- [ ] staged plan actionable  
- [ ] pivot conditions falsifiable  
- [ ] hinge-tests cheap to run

**parsimony**  
- [ ] no ramble  
- [ ] no unnecessary theory  

---

## integration with other ops

**upstream:**  
- **diverge** (breadth)  
- **attack / antithesize** (adversarial clarity)  
- **simulate** (futures)  
- **synthesize** (coherence)  

**downstream:**  
- **operationalize** (metrics)  
- **prioritize** (sequencing)  
- **test** (checkpoint design)

judgementize is the **closing operator** that converts analysis into agency.

---

## examples (mini)

### example 1: judgementize on strategic direction
after upstream ops, judgementize produces:

- credences: A 30%, B 45%, C 25%  
- burden: moderate (reversible first 3 months)  
- risks: B has coordination bottlenecks; mitigant = phased team ramp  
- stages: probe → pilot → commit  
- hinge-test: talk to 3 external validators to test demand  
- recommendation: choose B with 3-month checkpoint; pivot to C if demand probe fails.

---

### example 2: judgementize on adopting a new architecture
outputs:

- credence: variant 2 leads  
- burden: high (infrastructure lock-in)  
- reversibility: low after month 2  
- stage plan: 4-week prototype → performance threshold → deeper commit  
- hinge-test: latency under synthetic load  
- recommendation: pursue variant 2; fallback to variant 1 if latency hinge fails.

---

### example 3: judgementize on allocating scarce research time
outputs:

- credences: X > Y > Z  
- burden: low (easily reversible)  
- risks: dependency/spillover risks; mitigant = parallel skill-building  
- hinge-test: initial learning-rate run for X  
- recommendation: start with X; revisit after hinge-test checkpoint.

---

## meta-note

judgementize = **analysis closure with structured reversibility**.

it converts a reasoning forest into:

- a decision  
- a rationale  
- a risk map  
- a fallback  
- a hinge-test set  
- a reversible plan  

it’s where thinking becomes movement.

---