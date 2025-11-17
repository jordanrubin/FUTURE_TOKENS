---
name: diverge
description: expand the search radius around a concept by generating orthogonal, analogous, or alternative representations, options, mechanisms, or frames. diverge is about *branching the space*, not committing to any branch. unlike reframe, which applies one chosen lens, diverge enumerates multiple lenses, adjacencies, metaphors, or solution patterns for later selection.
---

## tl;dr

**diverge ≠ reframe.**

- **reframe** → pick ONE representation and restate the object using that frame’s primitives  
- **diverge** → generate MANY plausible representations, options, analogs, or mappings without committing

diverge asks:

> “what are the nearby-but-different ways this could be conceptualized, instantiated, solved, analogized, or reframed?”

it’s a **breadth-first operator**.

---

## when to use

use **diverge** when you want:

- new **options**  
- new **frames**  
- new **analogies**  
- new **mechanisms**  
- new **problem decompositions**  
- new **solution patterns**  
- a **search space** before choosing direction

don’t use when:

- you’ve already chosen a frame → use **reframe**  
- you want opposition → **antithesize**  
- you want failure modes → **attack**  
- you want timelines → **simulate**  
- you want concrete metrics → **operationalize**

rule of thumb:  
**diverge = option generation; reframe = option embodiment.**

---

## diverge types (menu)

### **frame generation**
produce multiple coherent frames for the same object (resource-frame, game-frame, energy-frame, incentive-frame, informational-frame, control-frame, etc.).

---

### **alternative instantiations**
generate different ways to “instantiate” the concept in the world.

example: “feedback system” → managerial reviews, peer rotation, automated dashboards, market-like bidding, apprenticeship loops.

---

### **adjacency search**
identify conceptual or practical neighbors (things “one hop out”).

example: “decision memo” → brief, PR/FAQ, pre-mortem, RFC, user story, hypothesis ledger.

---

### **analogy/metaphor surface**
find structurally similar systems with high pattern-transfer potential.

example: “queue management” → triage rooms, CPU scheduling, air-traffic control, kanban, routing protocols.

---

### **option expansion**
enumerate plausible alternatives before evaluating them.

example: “solution to X” → strategies A/B/C/D with crisp differences (mechanism, cost structure, failure mode).

---

### **dimension explosion**
take the underlying dimensions and generate orthogonal directions.

example: if dimensions are {risk, latency, cost}, produce strategies that extremize each.

---

### **counter-similarities**
find things that look different but share hidden structure.

---

## signature

diverge(seed, modes?) → branches[]

- **seed:** concept, problem, plan, frame, or domain  
- **modes:** optional emphasis tags (frames | analogies | adjacencies | options | mechanisms)

output: 5–12 orthogonal branches, each in crisp, minimal form.

---

## process (step by step)

### step 0: extract latent dimensions
what are the natural underlying axes for the seed?

### step 1: pick divergence style(s)
based on **modes** or default to {frames, analogies, options}.

### step 2: generate branches
for each mode, produce **coherent, distinct** alternatives:

- 1–3 sentences per branch  
- emphasize mechanism, not vibes  
- ensure branches differ by at least one dimension or causal structure

### step 3: orthogonalize
dedupe and ensure branches don’t collapse into the same thing:

- different primitives  
- different cost structures  
- different levers/incentives  
- different failure profiles  
- different regimes where they dominate

### step 4: package results
output:

- branches[] (each with short description)  
- dimensions_touched  
- outlier_branch (most orthogonal)  
- wildcard_branch (low probability, high insight)

---

## quality criteria

**orthogonality**
- [ ] branches differ in mechanism / representation  
- [ ] no theme duplication  

**coherence**
- [ ] each branch is meaningful and runnable  
- [ ] no branch requires extra phantom assumptions

**coverage**
- [ ] at least 3 divergence types touched  
- [ ] one weird/outlier option included

**parsimony**
- [ ] each branch is crisp (≤3 sentences)  
- [ ] no rambly vibes

**decision usefulness**
- [ ] branches are distinct enough that reframe/attack/operationalize can follow

---

## genre-specific patterns

### problem solving
generate alternative solution strategies based on different resource or constraint assumptions.

### concept exploration
generate alternative metaphors or ontologies that reveal structure.

### system design
enumerate architectures with different tradeoff surfaces.

### product ideation
generate multiple value props or user journeys.

### research / investigation
generate competing hypotheses, mechanisms, or causal stories.

---

## anti-patterns

### shallow synonyms
saying the same thing in different words ≠ divergence.

### fuzzy branches
branches must be crisp enough to operationalize or reframe.

### collapsing into reframe
don’t fully inhabit any branch — generate, don’t commit.

### premature evaluation
diverge is NOT about ranking or judging. that’s downstream.

---

## integration with other ops

**upstream:**  
- reframe can be used first if the seed is too mushy to diverge  
- decompose helps extract underlying axes

**downstream:**  
- reframe → inhabit one branch and restate the object through it  
- test → push each branch to extremes  
- simulate → forecast consequences of each branch  
- attack → find failure modes of select branches  
- prioritize → decide which branches merit follow-up

---

## examples (mini)

### example 1: diverge on “improving onboarding”
- frames: “coordination”, “trust-building”, “information-flow”, “skill-ramp”  
- analogies: apprenticeship guilds, supply-chain buffering, avionics checklists  
- options: structured week-by-week train-up; tag-team mentorship; guided sandbox; automated checkpoints; micro-certifications  

---

### example 2: diverge on “reducing errors”
- frames: detection, prevention, redundancy, incentives, automation  
- analogies: compiler passes, surgical checklists, circuit fault-tolerance  
- options: peer review blitz, typed interfaces, automated linting, staged rollouts

---

### example 3: diverge on “improving strategic planning”
- frames: forecast regime, portfolio allocation, hypothesis ledger, bet-sizing  
- adjacencies: OKRs, PR/FAQs, red-team docs, decision memos  
- options: rotating planning cadences, multi-horizon maps, scenario trees

---

## meta-note

diverge = **map expansion**.  
reframe = **coordinate adoption**.

without diverge, you explore 1–2 obvious directions.  
with diverge, you explore the **search region** first — then pick which worlds to inhabit, operationalize, simulate, or attack.

it’s the operator that makes the rest of the reasoning toolkit actually *choiceful*.